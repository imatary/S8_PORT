.class public Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.super Landroid/app/Activity;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ReadBitmapFromFileTask;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SwapObserver;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$EffectButtonInfo;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Subscriber;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;,
        Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION_FOR_FRAME:I = 0x3e8

.field public static final FILE_DIRECTORY_DECO:Ljava/lang/String;

.field private static final FILE_DIR_DECO:Ljava/lang/String;

.field public static final FOUR_THREE_RATIO:I = 0x4

.field private static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final MY_PERMISSIONS_REQUEST:I = 0xb

.field private static final MY_PERMISSION_REQUEST_SAVE_SHARE:I = 0x16

.field public static final NINE_SIXTEEN_RATIO:I = 0x5

.field public static final ONE_TO_ONE:I = 0x1

.field public static final ORIGINAL_RATIO:I = 0x2

.field private static final PERSONAL_PAGE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field private static final PERSONAL_PAGE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field private static final REQ_CODE_SUPERIMPOSE_EDIT:I = 0xfa4

.field public static final SIXTEEN_NINE_RATIO:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PEDIT_MotionPhotoActivity"

.field public static final THREE_FOUR_RATIO:I = 0x3

.field public static THUMB_VIEW_TOTAL_NUM:I


# instance fields
.field private final ATTACH_SHEET:Ljava/lang/String;

.field public CVTypeCur:I

.field private actionBarCancelSave:Landroid/widget/LinearLayout;

.field private actionBarEditSave:Landroid/widget/LinearLayout;

.field public actionbarLayout:Landroid/widget/LinearLayout;

.field private agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

.field public agifImageAdder:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;

.field agifInputFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private aspectRatioSubMenu:Landroid/widget/LinearLayout;

.field private aspectRatioTextView:Landroid/widget/TextView;

.field private backButton:Landroid/widget/LinearLayout;

.field bottom_buttons:Landroid/widget/LinearLayout;

.field private builder:Landroid/app/AlertDialog$Builder;

.field private buttonInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$EffectButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public cancelButton:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

.field private countImageAdd:I

.field public curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

.field private currDialogType:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

.field public currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

.field public currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

.field currentFrameSentToDecoration:I

.field private currentMotionOrientation:I

.field public currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

.field private currentValue:F

.field deviceHeight:I

.field deviceWidth:I

.field private dialogPermission:Landroid/app/AlertDialog;

.field private didNotGoToPlayMode:Z

.field private directionSubMenuLayout:Landroid/widget/LinearLayout;

.field private directionTextView:Landroid/widget/TextView;

.field private doesSameAspectRatio:Z

.field public doneButton:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

.field public doneButtonLayout:Landroid/widget/LinearLayout;

.field editMenuListener:Landroid/view/View$OnClickListener;

.field private editPopUpOpen:Z

.field private editTextView:Landroid/widget/TextView;

.field private effectGISRect:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private faceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private fourThreeRatio:Landroid/widget/FrameLayout;

.field private gif_setting_changed:Z

.field private gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

.field index:I

.field inputFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAspectRatioSubMenuShown:Z

.field private isBurstShotImage:Z

.field isDecorationAdded:Z

.field private isDirectionSubMenuShown:Z

.field private isGridOpenedForFirstTime:Z

.field private isImagesLoading:Z

.field private isPriavtePath:Z

.field private isSaveUnderProcess:Z

.field private isShareViaEnabled:Z

.field private isShowAttach:Z

.field private isSpeedSubMenuShown:Z

.field itemsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ivFourThreeRatio:Landroid/widget/ImageView;

.field private ivNineSixteenRatio:Landroid/widget/ImageView;

.field private ivSixteenNineRatio:Landroid/widget/ImageView;

.field private ivThreeFourRatio:Landroid/widget/ImageView;

.field private lastClickTimeAddButton:J

.field private mActionBarButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

.field private mAddImage:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

.field private mBitmpsToRecycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

.field private mCurrDialog:Landroid/app/Dialog;

.field mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDuration:I

.field private mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

.field mFileNames:[Ljava/lang/String;

.field private mGLLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsDecorationLaunched:Z

.field private mIsModeChanged:Z

.field private mIsPlayFirst:Z

.field private mIsScalerequired:Z

.field mLoadingBitmap:Landroid/graphics/Bitmap;

.field private mLoadingTask:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

.field private mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;

.field private mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

.field mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

.field private mPrintReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/Dialog;

.field private mSavePath:Ljava/lang/String;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field mainLayout:Landroid/widget/FrameLayout;

.field private menu:Landroid/view/Menu;

.field private motionPhotoMainLayout:Landroid/widget/RelativeLayout;

.field private nineSixteenRatio:Landroid/widget/FrameLayout;

.field private pathRuleId:Ljava/lang/String;

.field private permissionGranted:Z

.field photoViewHeight:I

.field photoViewWidth:I

.field private playButton:Landroid/widget/FrameLayout;

.field private previousRatio:I

.field public removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

.field private removedecorationWidth:I

.field required_aspect:F

.field private resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

.field public saveLayout:Landroid/widget/LinearLayout;

.field private saveWidth:I

.field private scrollObserver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;

.field private selectedIntent:Landroid/content/Intent;

.field private sixteenNineRatio:Landroid/widget/FrameLayout;

.field private speedSubMenuLayout:Landroid/widget/LinearLayout;

.field private speedTextView:Landroid/widget/TextView;

.field private sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

.field private threeFourRatio:Landroid/widget/FrameLayout;

.field private thumbnailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field unSupported:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private undoRemoveLayout:Landroid/widget/LinearLayout;

.field unsupportedUriSize:I

.field private updateProgressDialog:Z

.field uriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field uriSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._agifDeco"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deco_stickers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIR_DECO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "attach_sheet"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ATTACH_SHEET:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->FiveX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewWidth:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mainLayout:Landroid/widget/FrameLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->itemsToRemove:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAddImage:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unsupportedUriSize:I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mActionBarButtonList:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsModeChanged:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarCancelSave:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarEditSave:Landroid/widget/LinearLayout;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->lastClickTimeAddButton:J

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifImageAdder:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->didNotGoToPlayMode:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->threeFourRatio:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->fourThreeRatio:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->nineSixteenRatio:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sixteenNineRatio:Landroid/widget/FrameLayout;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->thumbnailList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->buttonInfoList:Ljava/util/List;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isGridOpenedForFirstTime:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->builder:Landroid/app/AlertDialog$Builder;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSaveUnderProcess:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$2;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBitmpsToRecycle:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currDialogType:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsPlayFirst:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$3;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editMenuListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$5;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scrollObserver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isPriavtePath:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$6;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsDecorationLaunched:Z

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentMotionOrientation:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateProgressDialog:Z

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsScalerequired:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mFileNames:[Ljava/lang/String;

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->effectGISRect:Ljava/util/HashMap;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShowAttach:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pathRuleId:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$47;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$47;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    return-void
.end method

.method private AddBaseImage(Landroid/content/Intent;)V
    .locals 38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSaveSDCard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowSDCardMemory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->exitLowSDCardMemory()V

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    :goto_0
    if-ltz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_1

    :goto_1
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_6

    const-string v3, "\\."

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v30, v3

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    new-instance v14, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v32

    invoke-direct {v14, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v27

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    if-gtz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v14, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-wide/16 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v4, v5}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :cond_2
    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v27

    :cond_3
    if-eqz v27, :cond_4

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_4

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v27, 0x0

    :cond_5
    add-int v15, v15, v27

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/2addr v3, v15

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    if-eqz v31, :cond_9

    const-string v3, "gif"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f07009c

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    :goto_3
    return-void

    :cond_9
    const v3, 0x7f07009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unsupportedUriSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-le v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    if-nez v3, :cond_b

    const v3, 0x7f07009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v3, v4, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    :goto_4
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    if-lez v3, :cond_e

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    const v3, 0x7f07016f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    goto/16 :goto_3

    :cond_c
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->isSupportContinuousShots()Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x7f070094

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0700b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v35

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v3, v0, v4, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->thumbnailViewUpdater(II)V

    const/4 v3, 0x0

    sput v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->setNoOfBitmapsToLoad(I)V

    const/16 v22, 0x1

    const/16 v21, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_13

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_f

    const-string v3, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/4 v3, 0x2

    aget-object v3, v36, v3

    const-string v4, "Private"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v23, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_12

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    goto/16 :goto_3

    :cond_11
    const v3, 0x7f070098

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-lt v0, v3, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->shutDownExecutor()V

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    if-eqz v31, :cond_1d

    const-string v3, "\\."

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v29, v3

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    new-instance v14, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v37

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v20

    const/16 v17, 0x0

    if-eqz v37, :cond_15

    if-eqz v20, :cond_15

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    if-gtz v3, :cond_18

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static/range {v31 .. v31}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v14, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-wide/16 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v4, v5}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :cond_16
    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v37

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v20

    if-eqz v37, :cond_17

    if-eqz v20, :cond_17

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    if-gtz v3, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_1d

    const v3, 0x7f07009f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    goto/16 :goto_3

    :cond_18
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v37

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v28

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v3

    add-int v3, v3, v28

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v3, v4, :cond_1a

    :goto_7
    const/16 v25, 0x0

    :goto_8
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-nez v25, :cond_1b

    if-eqz v22, :cond_19

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    invoke-static/range {v17 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v3, v4, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v5, v6, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x0

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_19
    new-instance v24, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    :goto_9
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_8

    :cond_1a
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v28

    goto/16 :goto_7

    :cond_1b
    new-instance v24, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    goto :goto_9

    :cond_1c
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1d
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v25, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_20

    if-eqz v22, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getRectFormURI(Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewWidth()I

    move-result v11

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewHeight()I

    move-result v12

    sget v13, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->RESIZE_LESS_THAM_MAX:I

    invoke-static/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_21

    const v3, 0x7f07009f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x0

    :cond_20
    new-instance v24, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getRectFormURI(Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setEffectRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    goto/16 :goto_a

    :cond_21
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_b
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doEditClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSpeedAspectRatiosubmenu()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenu()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSwapAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFaceRects()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setPlaybuttonVisible()V

    return-void
.end method

.method static synthetic access$2202(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsDecorationLaunched:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentMotionOrientation:I

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentMotionOrientation:I

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeOrientation()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;ZLandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveFunc(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    return-void
.end method

.method static synthetic access$3002(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateAllBitmapsWithStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeUndoVisible(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->thumbnailViewUpdater(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsPlayFirst:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsPlayFirst:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateButtonState()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateDirectionPopupParams()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateRatioPopupParams()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->didNotGoToPlayMode:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsModeChanged:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeViewMode()V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mActionBarButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doSaveClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pauseAgif()V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doRemoveLayout()V

    return-void
.end method

.method static synthetic access$5100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getRectFormURI(Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateImageAspectRatio()V

    return-void
.end method

.method static synthetic access$5302(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSaveUnderProcess:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5602(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isPriavtePath:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDuration:I

    return v0
.end method

.method static synthetic access$5702(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDuration:I

    return p1
.end method

.method static synthetic access$5800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeSpeedToDuration(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkAgifSameSize(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setDialogContent(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideAttachGallery(ZZ)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShowAttach:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->disableFocusAll(Z)V

    return-void
.end method

.method static synthetic access$6700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeAttachSheet(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedImge(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6902(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isImagesLoading:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$7000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonForSingleImage(Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setPlaybuttonInvisible()V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFaceRectList(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showSaveMenu()V

    return-void
.end method

.method static synthetic access$7400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIR_DECO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startIntentToLPE(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doSave()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    return p1
.end method

.method private addSALogAgif()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v0, v1, :cond_9

    const-string v0, "846"

    const-string v1, "8554"

    const-string v2, "Ratio"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a1_1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_0

    const-string v0, "846"

    const-string v1, "8603"

    const-string v2, "1 to 1"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a4_3:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_1

    const-string v0, "846"

    const-string v1, "8604"

    const-string v2, "4 to 3"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a3_4:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_2

    const-string v0, "846"

    const-string v1, "8605"

    const-string v2, "3 to 4"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a16_9:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_3

    const-string v0, "846"

    const-string v1, "8606"

    const-string v2, "16 to 9"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a_9_16:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_4

    const-string v0, "846"

    const-string v1, "8607"

    const-string v2, "9 to 16"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->FiveX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    if-eq v0, v1, :cond_a

    const-string v0, "846"

    const-string v1, "8555"

    const-string v2, "Speed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TwoX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    if-ne v0, v1, :cond_5

    const-string v0, "846"

    const-string v1, "8611"

    const-string v2, "2 frames per sound"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TenX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    if-ne v0, v1, :cond_6

    const-string v0, "846"

    const-string v1, "8613"

    const-string v2, "10 frames per sound"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    if-eq v0, v1, :cond_b

    const-string v0, "846"

    const-string v1, "8556"

    const-string v2, "Direction"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Backward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    if-ne v0, v1, :cond_7

    const-string v0, "846"

    const-string v1, "8621"

    const-string v2, "Backward"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Loop:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    if-ne v0, v1, :cond_8

    const-string v0, "846"

    const-string v1, "8623"

    const-string v2, "Loop"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const-string v0, "846"

    const-string v1, "8554"

    const-string v2, "Ratio"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "846"

    const-string v1, "8602"

    const-string v2, "Original"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v0, "846"

    const-string v1, "8555"

    const-string v2, "Speed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "846"

    const-string v1, "8612"

    const-string v2, "5 frames per sound"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v0, "846"

    const-string v1, "8556"

    const-string v2, "Direction"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "846"

    const-string v1, "8622"

    const-string v2, "Forward"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private addThumbnail(Landroid/graphics/Bitmap;)V
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifImageAdder:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object v4, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setAddIcon()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButtonView(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setButtonsPos()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    const v1, 0x7f0e00da

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$38;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$38;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private calculateActionbarItemWidth()V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f0e0335

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removedecorationWidth:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveWidth:I

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private changeLanguage()V
    .locals 12

    const v11, 0x7f0e0335

    const v10, 0x7f0e0088

    const v9, 0x7f07029f

    const v8, 0x7f07027e

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currDialogType:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setDialogContent(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showAlertDialog()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08057e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const v5, 0x7f0e0355

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0702c0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0e0350

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f070262

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0e034b

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0700ea

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0e035a

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0700d3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0e035f

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0700c9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f07026d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0e0336

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    if-nez v5, :cond_2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->menu:Landroid/view/Menu;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->menu:Landroid/view/Menu;

    const v6, 0x7f0e0478

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->menu:Landroid/view/Menu;

    const v6, 0x7f0e047c

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0, v9}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private changeOrientation()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceWidth:I

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceHeight:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->controlTextSize()V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceWidth:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewWidth:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceHeight:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewHeight:I

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0e03b2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0e041d

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0e0225

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->imageViewAspectUpdate()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSubMenu()V

    :cond_0
    :goto_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$26;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$26;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    const v1, 0x7f0300a1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSubMenu()V

    goto :goto_3
.end method

.method private changeSpeedToDuration(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;)I
    .locals 3

    const/16 v0, 0x3e8

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$SPEED:[I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x1f4

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc8

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x7d0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x21

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private changeToPlayMode()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->didNotGoToPlayMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsModeChanged:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarEditSave:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarCancelSave:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->imageViewAspectUpdate()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mActionBarButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->getId()I

    move-result v2

    const v3, 0x7f0e0332

    if-ne v2, v3, :cond_0

    const v2, 0x7f0204b6

    const v3, 0x7f07027e

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->changeIconNText(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private changeViewMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    if-ne v1, v2, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->didNotGoToPlayMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsModeChanged:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarEditSave:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarCancelSave:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->imageViewAspectUpdate()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mActionBarButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->getId()I

    move-result v2

    const v3, 0x7f0e0332

    if-ne v2, v3, :cond_0

    const v2, 0x7f0204b6

    const v3, 0x7f07027e

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->changeIconNText(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkAgifSameSize(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v3

    if-eq v0, v3, :cond_1

    :cond_0
    const-string v3, "PEDIT_MotionPhotoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " image of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is different with first image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "PEDIT_MotionPhotoActivity"

    const-string v4, "All input images are same size"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkImagesCount()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private controlTextSize()V
    .locals 8

    const v7, 0x7f0801c1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x41900000    # 18.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0088

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0335

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkIfHugeFont(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private disableFocusAll(Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenu()V

    if-eqz p1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$41;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$41;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f04000b

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const v1, 0x7f0e032e

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0
.end method

.method private displayCustomDialogue()V
    .locals 4

    new-instance v1, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->populateDialogue()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f07029d

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$8;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$8;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f070092

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$9;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$10;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$10;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private doEditClick()V
    .locals 11

    const v10, 0x7f0206b5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsDecorationLaunched:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "846"

    const-string v6, "8553"

    const-string v7, "Edit"

    invoke-static {v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f0e0347

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifMenuInGSIMLog(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pauseAgif()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getCurrentIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->selectCurrentFrame(I)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_3

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    :cond_3
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$4;

    invoke-direct {v6, p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$4;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/widget/LinearLayout;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-nez v5, :cond_5

    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method private doRemoveLayout()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeUndoVisible(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ReadBitmapFromFileTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ReadBitmapFromFileTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$1;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ReadBitmapFromFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07027e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateContentDescription()V

    return-void
.end method

.method private doSave()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSubMenu()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenu()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v1

    if-gt v1, v4, :cond_0

    const v1, 0x7f07016f

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "846"

    const-string v2, "8551"

    const-string v3, "Save"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->addSALogAgif()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07029f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveFunc(ZLandroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateContentDescription()V

    goto :goto_0
.end method

.method private doSaveClick()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSubMenu()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenu()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doSaveAction()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkIfActionbarFit()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showhideActionbar(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "846"

    const-string v1, "8601"

    const-string v2, "Share"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeShareViaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->initSetAsOrShareViaLayout(Landroid/content/Intent;Ljava/lang/String;)Z

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private fillEffectRects(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    const-string v0, "content://com.samsung.cmh/story"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "story_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "media_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "gis_rect"

    aput-object v3, v2, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-nez v6, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_2

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_1

    if-eqz v8, :cond_1

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v10, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget-object v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v11, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v11, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v10, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->effectGISRect:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private getAdderIconBitmap()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020455

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getImageCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getImageList(Landroid/content/Intent;)Z
    .locals 20

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    sget-object v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    const-string v14, "AddSelectedItemToThumbnailList"

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logI(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "burst_shot"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v2, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "best_shot"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v10, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "story_id"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_1
    sget-object v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    const-string v14, "selectedItems"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    if-nez v14, :cond_2

    const-string v14, "baseImage"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    if-eqz v12, :cond_3

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    if-nez v14, :cond_4

    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    const-string v14, "file_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->fillEffectRects(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sget v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-lt v14, v15, :cond_17

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v2, v14, :cond_e

    :cond_5
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_6

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sget v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-lt v14, v15, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_d

    const v14, 0x7f0701a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    sub-int v17, v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    int-to-float v15, v5

    sget v16, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string v14, "\\."

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "gif"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "jpg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "wbmp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "png"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "bmp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "jpeg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    const v14, 0x7f07009f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_e
    if-lez v2, :cond_7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v2

    sget v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    div-int/lit8 v15, v15, 0x2

    if-ge v14, v15, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sget v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    sub-int v9, v14, v15

    :goto_5
    if-gez v9, :cond_f

    const/4 v9, 0x0

    :cond_f
    move v5, v9

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_10

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sget v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-lt v14, v15, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_16

    const v14, 0x7f0701a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    sub-int v17, v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    sget v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    div-int/lit8 v14, v14, 0x2

    sub-int v9, v2, v14

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_14

    const-string v14, "\\."

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "gif"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "jpg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "wbmp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "png"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "bmp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "jpeg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    const v14, 0x7f07009f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_21

    const/4 v5, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1c

    const-string v14, "\\."

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "jpg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_18

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "wbmp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_18

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "png"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_18

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "bmp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_18

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "jpeg"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    invoke-static {v15, v14}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->isLowResolutionImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1a
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v7, v14

    const-string v15, "gif"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_20

    const v14, 0x7f0701a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    sub-int v17, v17, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1e
    :goto_a
    if-eqz v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1f
    const/4 v5, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_20
    const v14, 0x7f07009f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :cond_21
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->hide()V

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private getOutPathName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getSaveFileName(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v2, "/storage/Private/DCIM/Photo editor"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->checkValidDirectory(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/storage/Private/DCIM/Photo editor/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->checkValidDirectory(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/agif/util/Constants;->MOTION_PHOTO_SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRectFormURI(Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->effectGISRect:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    return-object v1
.end method

.method private hideAttachGallery(ZZ)V
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->disableFocusAll(Z)V

    :cond_0
    const v2, 0x7f0e00de

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShowAttach:Z

    const v2, 0x7f040010

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeAttachSheet(Landroid/view/View;)V

    goto :goto_1
.end method

.method private hideSpeedAspectRatiosubmenu()V
    .locals 5

    const v4, 0x7f0e0342

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v0, 0x7f0e0341

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e034c

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v0, 0x7f0e0351

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v0, 0x7f0e0343

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0356

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    return-void
.end method

.method private imageViewAspectUpdate()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$32;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$32;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private inflateAgifBottomMenu()V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f0e0347

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifEditInGSIMLog(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifRatioInGSIMLog(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifSpeedInGSIMLog(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editMenuListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->destroy()V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SwapObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SwapObserver;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Subscriber;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;Z)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->init(Landroid/view/View;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->initForDesktopMode()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setScrollbarFadingEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method private initLocaleChangedBroadcastReceiver()V
    .locals 2

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initSaveYesNoCancelForFinish()V
    .locals 0

    return-void
.end method

.method private initSetAsOrShareViaLayout(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->launchPermissionForSaveShare()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pauseAgif()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8, p1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v6, v3

    :cond_2
    if-ltz v6, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const v10, 0x7f0702a1

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/content/pm/LabeledIntent;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/LabeledIntent;

    const/high16 v10, 0x20000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v10, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v10, 0x24000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_4

    const-string v10, "extra_chooser_bixby_applist"

    invoke-virtual {v9, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "extra_chooser_bixby_state"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startActivity(Landroid/content/Intent;)V

    move v10, v11

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private initTextViewProperties()V
    .locals 4

    const v3, 0x7f0c0099

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    const v0, 0x7f0e035f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    return-void
.end method

.method private insertAddButton()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getAdderIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->addThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private isFolderCloud(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRTL()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

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

.method private isSwapAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isSwapAnimationRunning()Z

    move-result v0

    return v0
.end method

.method private launchAddMode()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->didNotGoToPlayMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsModeChanged:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarEditSave:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarCancelSave:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mActionBarButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->getId()I

    move-result v2

    const v3, 0x7f0e0332

    if-ne v2, v3, :cond_0

    const v2, 0x7f0204b6

    const v3, 0x7f07027e

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->changeIconNText(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeProgressDialog(Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateProgressDialog:Z

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f0a000a

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f0300a1

    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0e03b1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setLayout(II)V

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateProgressDialog:Z

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$11;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$11;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0
.end method

.method private makeUndoVisible(Z)V
    .locals 6

    const v5, 0x7f0e0336

    const v4, 0x7f0e0334

    const v3, 0x7f0e0330

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkIfActionbarFit()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showhideActionbar(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    goto :goto_2
.end method

.method private pauseAgif()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->pause()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    :cond_0
    return-void
.end method

.method private playAGIF()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeToPlayMode()V

    return-void
.end method

.method private registerClickListener()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    const v3, 0x7f0e0328

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, p0, v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;Landroid/content/Context;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$27;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$27;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->setEnabled(Z)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    const v3, 0x7f0e0332

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;Landroid/content/Context;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$28;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$28;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0e0330

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$29;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$29;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$30;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$30;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f070333

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$31;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$31;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mActionBarButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mActionBarButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerPrintReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPrivateModeReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeAttachSheet(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e0199

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setOnAttachInteractionListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method private requestNlgWithoutParameters(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AgifSave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pathRuleId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pathRuleId:Ljava/lang/String;

    const-string v1, "PhotoEditor_19"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationEditor NLG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pathRuleId:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private saveFunc(ZLandroid/content/Intent;)V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->launchPermissionForSaveShare()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isPriavtePath:Z

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSaveUnderProcess:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    if-eqz v4, :cond_0

    new-array v3, v8, [Z

    aput-boolean v6, v3, v6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifSavedImagesInGSIMLog(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->flushAgifGSIMLogsOnSave()V

    new-instance v1, Landroid/app/ProgressDialog;

    const v4, 0x7f0a00b8

    invoke-direct {v1, p0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f070055

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;[Z)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$34;

    invoke-direct {v5, p0, v1, p2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$34;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/app/ProgressDialog;Landroid/content/Intent;[Z)V

    invoke-direct {v4, p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Void;

    aput-object v7, v5, v6

    aput-object v7, v5, v8

    const/4 v6, 0x2

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v4, "E500"

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {p0, v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private selectedImge(Landroid/content/Intent;)V
    .locals 30

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeProgressDialog(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v25, "selectedItems"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_9

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    const-string v25, "\\."

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "jpg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "wbmp"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "png"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "bmp"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "jpeg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->isLowResolutionImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    const v25, 0x7f0701a2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v28, v28, v24

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_2
    const/4 v10, 0x0

    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    const v25, 0x7f07009f

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-gtz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Dialog;->hide()V

    :cond_a
    :goto_4
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isFolderCloud(Ljava/util/ArrayList;)Z

    move-result v25

    if-eqz v25, :cond_c

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v11, v6, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v8, v25, -0x1

    :goto_5
    if-ltz v8, :cond_10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-lt v8, v0, :cond_d

    :goto_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    const-string v25, "\\."

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v16, v25

    const-string v26, "gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    new-instance v4, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v15

    if-lez v15, :cond_f

    add-int/2addr v5, v15

    :cond_e
    :goto_7
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    if-nez v25, :cond_12

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Dialog;->isShowing()Z

    move-result v25

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    const v25, 0x7f07009f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unsupportedUriSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    add-int v25, v25, v5

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sget v26, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    move/from16 v25, v0

    if-nez v25, :cond_13

    const v25, 0x7f07009e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget v28, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v29

    sub-int v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget v28, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v29

    sub-int v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sget v26, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    :goto_8
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->setNoOfBitmapsToLoad(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->thumbnailViewUpdater(II)V

    const/16 v25, 0x0

    sput v25, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    const/16 v25, 0x1

    sput-boolean v25, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getCurrentIndex()I

    move-result v25

    add-int/lit8 v19, v25, 0x1

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    const/4 v10, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_1c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_16

    :cond_14
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_15
    sget v25, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v26

    sub-int v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    goto/16 :goto_8

    :cond_16
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x2

    aget-object v25, v22, v25

    const-string v26, "Private"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    const/4 v12, 0x1

    :cond_17
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-eqz v18, :cond_14

    const-string v25, "\\."

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v16, v25

    const-string v26, "gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1b

    new-instance v4, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v25

    add-int v25, v25, v15

    sget v26, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    :goto_b
    const/4 v14, 0x0

    move/from16 v20, v19

    :goto_c
    if-ge v14, v15, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z

    move-result v25

    if-eqz v25, :cond_1a

    if-nez v14, :cond_19

    new-instance v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-direct {v13, v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    iput-boolean v12, v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    add-int/lit8 v19, v20, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    :goto_d
    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v19

    goto :goto_c

    :cond_18
    sget v25, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v26

    sub-int v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v15

    goto :goto_b

    :cond_19
    new-instance v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-direct {v13, v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    iput-boolean v12, v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    add-int/lit8 v19, v20, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    goto :goto_d

    :cond_1a
    move/from16 v19, v20

    goto/16 :goto_a

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z

    move-result v25

    if-eqz v25, :cond_14

    new-instance v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;)V

    iput-boolean v12, v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    add-int/lit8 v20, v19, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    move/from16 v19, v20

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->shutDownExecutor()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateDoneButton()V

    goto/16 :goto_4
.end method

.method private setBackgroundForButtons()V
    .locals 5

    const v4, 0x7f0206a3

    const/4 v3, 0x0

    const v2, 0x7f0206b5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0348

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e034d

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e0352

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e0357

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e035c

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setContentDescriptionForUI()V
    .locals 11

    const/16 v10, 0xa

    const/16 v9, 0x10

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f070263

    invoke-static {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const v3, 0x7f0e03b4

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f07019e

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e03b4

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e03b6

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e03b6

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->threeFourRatio:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->threeFourRatio:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->fourThreeRatio:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->fourThreeRatio:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v8, [Ljava/lang/Object;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->nineSixteenRatio:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->nineSixteenRatio:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sixteenNineRatio:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sixteenNineRatio:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const v3, 0x7f0701a8

    invoke-static {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e041f

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e041f

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0421

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0e0421

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0423

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0e0423

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-static {p0, v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e034c

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070262

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e034c

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContentDescriptionMainButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0351

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0702c0

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0351

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContentDescriptionMainButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0347

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700ea

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0347

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContentDescriptionMainButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0356

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700d3

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0356

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContentDescriptionMainButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e035b

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700c9

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e035b

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContentDescriptionMainButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0222

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070157

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0222

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e021c

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070117

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e021c

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e021f

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f07007d

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e021f

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0264

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0264

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0266

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f07026e

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e0266

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    const v4, 0x7f070256

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    const v3, 0x7f070263

    invoke-static {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0e03b4

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f07019e

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e03b6

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->threeFourRatio:Landroid/widget/FrameLayout;

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->fourThreeRatio:Landroid/widget/FrameLayout;

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->nineSixteenRatio:Landroid/widget/FrameLayout;

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sixteenNineRatio:Landroid/widget/FrameLayout;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v0, 0x0

    const v3, 0x7f0701a8

    invoke-static {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e041f

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0421

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0423

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e034c

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070075

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0351

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0702c0

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0347

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700ea

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0356

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700d3

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e035b

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700c9

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e0222

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070157

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e021c

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070117

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f0e021f

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f07007d

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    const v4, 0x7f070256

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->nineSixteenRatio:Landroid/widget/FrameLayout;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sixteenNineRatio:Landroid/widget/FrameLayout;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private setDialogContent(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V
    .locals 4

    const v2, 0x7f0a00b8

    const v3, 0x7f070092

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$51;->$SwitchMap$com$sec$android$mimage$photoretouching$agif$MotionPhotoActivity$DIALOG_TYPE:[I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currDialogType:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    return-void

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f070289

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07027e

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$20;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700d5

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$19;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$19;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$18;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$18;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->builder:Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0702e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702e4

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$22;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$22;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$21;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$21;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->builder:Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHoveringForUIElements()V
    .locals 1

    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->threeFourRatio:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->fourThreeRatio:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->nineSixteenRatio:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sixteenNineRatio:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0e041f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0e0421

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0e0423

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0e0222

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0e021f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0e021c

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private setPlaybuttonInvisible()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeUndoVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    goto :goto_0
.end method

.method private setPlaybuttonVisible()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isImagesLoading:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    goto :goto_0
.end method

.method private setSaveLayoutEnabled(Z)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "#f2f2f2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    goto :goto_0
.end method

.method private showAlertDialog()V
    .locals 11

    const v10, 0x7f0c00b2

    const v9, 0x7f0c00b1

    const/4 v8, -0x1

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v6, 0x2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_5
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currDialogType:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    if-ne v4, v5, :cond_6

    sget-boolean v4, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private showHideEditSubmenu()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f0e0347

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->toggleScrollViewVisibility()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->getScrollVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private showHideEditSubmenuForFirstTime()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSaveMenu()V
    .locals 5

    const v4, 0x7f07027e

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonForSingleImage(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonForSingleImage(Z)V

    goto :goto_0
.end method

.method private showUndoDialog()V
    .locals 13

    const v12, 0x7f0c00b2

    const/4 v11, 0x1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0700fb

    invoke-static {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f070318

    invoke-static {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$45;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$45;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0700fa

    new-instance v8, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$46;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    const/4 v7, -0x2

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private showhideActionbar(Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0207c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->menu:Landroid/view/Menu;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->menu:Landroid/view/Menu;

    const v5, 0x7f0e0478

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0e0088

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionbarLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method private declared-synchronized startIntentToLPE(Landroid/graphics/Bitmap;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsDecorationLaunched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$44;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$44;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private thumbnailViewUpdater(II)V
    .locals 4

    const v1, 0x7f0e033e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isImagesLoading:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setPlaybuttonInvisible()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method private unregisterPrivateModeReceiver(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method

.method private updateAllBitmapsWithStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V
    .locals 30
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v11, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, -0x1

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isGif()Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getNoOfFrames()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getBitmapWidth()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getBitmapHeight()I

    move-result v19

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v22, 0x1

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getStickerIntArray(I)[I

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getBitmapWidth()I

    move-result v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getBitmapHeight()I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getBitmapWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getBitmapWidth()I

    move-result v8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getBitmapHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v16, Ljava/io/File;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " directory doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mFileNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mFileNames:[Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mFileNames:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->readOriginalBmpFromFilewithIndex(I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getRectForCurrentAGIFFrame(Landroid/graphics/Bitmap;F)Landroid/graphics/RectF;

    move-result-object v18

    :goto_5
    move-object v13, v14

    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_4

    add-int/lit8 v4, v21, 0x1

    mul-int/lit8 v24, v4, 0xa

    rem-int v4, v23, v25

    add-int/lit8 v27, v4, 0x1

    add-int v4, v24, v27

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getStickerIntArray(I)[I

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v5, v20

    move/from16 v8, v20

    move/from16 v9, v19

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v4, p0

    move-object/from16 v5, v18

    move-object/from16 v6, p3

    move-object v7, v13

    move-object/from16 v8, v26

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v12}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getUpdatedBitmap(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v29, v4

    check-cast v29, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFaceRectAfterDecoration(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->faceRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v10}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->updateBitmap(Landroid/graphics/Bitmap;I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFaceRects()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    move-object v15, v14

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v15, 0x0

    :cond_5
    if-eqz v28, :cond_6

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v28, 0x0

    :cond_6
    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v10, v4, :cond_7

    const/4 v10, -0x1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readOriginalBmpFromFile Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/RectF;

    goto/16 :goto_5

    :cond_9
    if-eqz v26, :cond_c

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :cond_b
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    const/16 v26, 0x0

    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    :cond_d
    const/16 p1, 0x0

    goto/16 :goto_2
.end method

.method private updateButtonState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateCounterView()V
    .locals 14

    const v13, 0x7f0805f9

    const v12, 0x7f0805f7

    const/4 v2, 0x0

    const v1, 0x7f0e033b

    const v3, 0x7f0805f5

    const v5, 0x7f0805f8

    const v6, 0x7f0805f6

    move-object v0, p0

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    const v0, 0x7f0e033d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x8

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0e033e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0e033c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateDirectionPopupParams()V
    .locals 10

    const v9, 0x7f0e0312

    const v8, 0x7f0e0356

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080288

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int v6, v1, v3

    sub-int v7, v2, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v5, v6

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    sub-int v7, v2, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v5, v6

    :cond_0
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    const/4 v5, 0x0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateFaceRectList(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private updateFaceRects()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getCurentAspectRatio()Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v0

    sget-object v8, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v8, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int v8, v1, v8

    if-ge v0, v8, :cond_4

    const/4 v6, 0x1

    :cond_4
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v8

    if-ge v0, v8, :cond_5

    const/4 v7, 0x1

    :cond_5
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int v8, v1, v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v8, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getFaceRectRegionfromBitmap(IILandroid/graphics/Rect;IIZZF)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method private updateImageAspectRatio()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a4_3:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_1

    const v0, 0x3faaaaab

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a1_1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a16_9:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x3fe38e39

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    goto :goto_0

    :cond_3
    const v0, 0x3fcccccd    # 1.6f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a3_4:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_5

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a_9_16:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v0, v1, :cond_7

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/high16 v0, 0x3f100000    # 0.5625f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    goto :goto_0

    :cond_6
    const/high16 v0, 0x3f200000    # 0.625f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->required_aspect:F

    goto :goto_0
.end method

.method private updateLayoutSize()V
    .locals 15

    const v4, 0x7f0e008a

    const v14, 0x7f0206b5

    const v13, 0x7f080505

    const v12, 0x7f0803e5

    const/4 v2, 0x0

    const v0, 0x7f0e0078

    const v1, 0x7f0802ac

    invoke-static {p0, v0, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e0330

    const v1, 0x7f0803e7

    const v3, 0x7f0803e6

    invoke-static {p0, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0801ed

    const v1, 0x7f0801eb

    invoke-static {p0, v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0207c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0e0333

    const v1, 0x7f080276

    invoke-static {p0, v0, v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v1, 0x7f0e0336

    const v5, 0x7f0801c0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v6, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v0, 0x7f0e0335

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v0, 0x7f0e032e

    const v1, 0x7f0805d1

    const v2, 0x7f0805d0

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateMainButton()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSubDirectionLayout()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSubSpeedLayout()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSubRatioLayout()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSubGridItem()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setBackgroundForButtons()V

    return-void
.end method

.method private updateMainButton()V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08028b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080524

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v9, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0e033f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080514

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v0, 0x7f0e033f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0e0312

    const/4 v2, 0x0

    const v3, 0x7f0804ae

    const v4, 0x7f0805a6

    const v5, 0x7f0805a6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    const v1, 0x7f0e033f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0805a6

    const v5, 0x7f0805a6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    const v0, 0x7f0e0312

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v0, 0x7f0e033f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v0, 0x7f0e0347

    const/4 v1, 0x0

    const v2, 0x7f0804ae

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e034a

    const v1, 0x7f0801ed

    const v2, 0x7f0801eb

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v1, 0x7f0e034b

    const/4 v2, 0x0

    const v3, 0x7f080234

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0801f6

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0e034c

    const/4 v1, 0x0

    const v2, 0x7f0804ae

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e034f

    const v1, 0x7f0801ed

    const v2, 0x7f0801eb

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v1, 0x7f0e0350

    const/4 v2, 0x0

    const v3, 0x7f080234

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0801f6

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0e0351

    const/4 v1, 0x0

    const v2, 0x7f0804ae

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e0354

    const v1, 0x7f0801ed

    const v2, 0x7f0801eb

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v1, 0x7f0e0355

    const/4 v2, 0x0

    const v3, 0x7f080234

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0801f6

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0e0356

    const/4 v1, 0x0

    const v2, 0x7f0804ae

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e0359

    const v1, 0x7f0801ed

    const v2, 0x7f0801eb

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v1, 0x7f0e035a

    const/4 v2, 0x0

    const v3, 0x7f080234

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0801f6

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0e035b

    const/4 v1, 0x0

    const v2, 0x7f0804ae

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e035e

    const v1, 0x7f0801ed

    const v2, 0x7f0801eb

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v1, 0x7f0e035f

    const/4 v2, 0x0

    const v3, 0x7f080234

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0801f6

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    const v0, 0x7f0e035f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0e0337

    const/4 v1, 0x0

    const v2, 0x7f0804ae

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e0340

    const v1, 0x7f0801f9

    const v2, 0x7f0801f8

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e0341

    const v1, 0x7f0801f9

    const v2, 0x7f0801f8

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e0342

    const v1, 0x7f0801f9

    const v2, 0x7f0801f8

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e0343

    const v1, 0x7f0801f9

    const v2, 0x7f0801f8

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    const v0, 0x7f0e0343

    const v1, 0x7f0801f9

    const v2, 0x7f0801f8

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParams(Landroid/content/Context;III)V

    return-void
.end method

.method private updateRatioPopupParams()V
    .locals 9

    const v8, 0x7f0e034c

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0805a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v6, v1, v3

    sub-int v7, v2, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v5, v6

    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    float-to-int v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const v6, 0x800003

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const/4 v6, 0x1

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private updateSaveButtonBackground(Z)V
    .locals 0

    return-void
.end method

.method private updateSaveButtonForSingleImage(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V

    return-void
.end method

.method private updateSubDirectionLayout()V
    .locals 12

    const v2, 0x7f08028a

    const v11, 0x7f08028c

    const v4, 0x7f08028d

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v0, 0x7f080288

    const v1, 0x7f08028b

    invoke-static {p0, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const v1, 0x7f0e0222

    if-ne v0, v1, :cond_0

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    move-object v0, p0

    move v5, v4

    move v6, v3

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    :goto_1
    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, v11, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, v11, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    move-object v0, p0

    move v5, v3

    move v6, v3

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateSubGridItem()V
    .locals 11

    const v1, 0x7f0e0339

    const/4 v2, 0x0

    const v3, 0x7f0803b2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f080596

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    const v1, 0x7f0e033a

    const v2, 0x7f080559

    const v3, 0x7f080557

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f080558

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    const v1, 0x7f0e0263

    const v2, 0x7f08051c

    const v3, 0x7f08051e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    const v1, 0x7f0e0262

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f08051d

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080520

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v0, 0x7f0e0263

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f0e0264

    const v2, 0x7f080521

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    const v1, 0x7f0e0265

    const v2, 0x7f08051f

    const v3, 0x7f08051f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    const v1, 0x7f0e0266

    const v2, 0x7f080521

    const/4 v3, 0x0

    const v4, 0x7f080520

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    const v1, 0x7f0e0267

    const v2, 0x7f08051f

    const v3, 0x7f08051f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParams(Landroid/content/Context;IIIIIII)V

    const v0, 0x7f0e0261

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080277

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080515

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSubRatioLayout()V
    .locals 11

    const v4, 0x7f08028d

    const v2, 0x7f08028c

    const/4 v6, 0x0

    const v0, 0x7f0e03b3

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v0, 0x7f08028b

    invoke-static {p0, v9, v6, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const v1, 0x7f0e03bd

    if-ne v0, v1, :cond_0

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    :goto_1
    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, v2, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    move-object v0, p0

    move v3, v2

    move v5, v6

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateSubSpeedLayout()V
    .locals 12

    const v2, 0x7f08028a

    const v11, 0x7f08028c

    const v4, 0x7f08028d

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v0, 0x7f080288

    const v1, 0x7f08028b

    invoke-static {p0, v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const v1, 0x7f0e0423

    if-ne v0, v1, :cond_0

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    move-object v0, p0

    move v5, v4

    move v6, v3

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    :goto_1
    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, v11, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, v11, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    move-object v0, p0

    move v5, v3

    move v6, v3

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static writeBmp([ILjava/lang/String;)Z
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v0, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v9, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4

    array-length v12, p0

    int-to-long v12, v12

    mul-long/2addr v4, v12

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time to write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object v8, v9

    :cond_2
    :goto_1
    return v1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    throw v1

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v8, v9

    goto :goto_3

    :catch_4
    move-exception v7

    move-object v8, v9

    goto :goto_2
.end method


# virtual methods
.method public addAgifImages()V
    .locals 11

    const v10, 0x7f0e0199

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-lt v3, v4, :cond_1

    const v3, 0x7f070319

    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.MULTIPLE_PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "pick-max-item"

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pauseAgif()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->lastClickTimeAddButton:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "ATTACH_VIEW"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->maxImage:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    if-nez v3, :cond_2

    invoke-static {v8, v8}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->newInstance(IZ)Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v3, v8}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setExpansionFragments(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setOnAttachInteractionListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;)V

    :cond_2
    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$40;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$40;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAttachSheetFragment:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    const-string v5, "ATTACH_VIEW"

    invoke-virtual {v3, v10, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    const v3, 0x7f0e00de

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->disableFocusAll(Z)V

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShowAttach:Z

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->lastClickTimeAddButton:J

    invoke-virtual {p0, v1, v9}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public addEmptyThumbnail()V
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    const-string v4, "Loading.."

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    move-result-object v10

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$37;

    invoke-direct {v0, p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$37;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addThumbnail()V
    .locals 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->thumbnailList:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object v7, v4

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    move-result-object v10

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;

    invoke-direct {v0, p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addThumbnailView(ILandroid/graphics/Bitmap;)V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    const-string v4, "Loading.."

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v6, p1

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;ZILcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AgifImageAdder;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Command;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;)Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButtonView(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setButtonsPos()V

    :cond_1
    return-void
.end method

.method public agifChanged()V
    .locals 5

    const v4, 0x7f07027e

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0088

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->menu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->menu:Landroid/view/Menu;

    const v3, 0x7f0e0478

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z

    :cond_1
    return-void
.end method

.method public checkIfActionbarFit()Z
    .locals 6

    const v5, 0x7f0801c0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->calculateActionbarItemWidth()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08050a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveWidth:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v2, v3, v4

    :goto_0
    sub-int v3, v1, v0

    if-gt v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removedecorationWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveWidth:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public checkIfActionbarFit(Landroid/content/res/Configuration;)Z
    .locals 6

    const v5, 0x7f0801c0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->calculateActionbarItemWidth()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08050a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v3, v4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveWidth:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v2, v3, v4

    :goto_0
    int-to-float v3, v2

    int-to-float v4, v0

    sub-float v4, v1, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removedecorationWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveWidth:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public crop_original_click(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    if-ne v0, v3, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    :cond_0
    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b9

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bd

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bb

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b7

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateImageAspectRatio()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V

    :cond_2
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifRatioInGSIMLog(I)V

    return-void
.end method

.method public directionClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0e0222

    const v5, 0x7f0e021f

    const v4, 0x7f0e021c

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setDirection(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Backward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Backward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setDirection(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Loop:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Loop:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setDirection(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e021c -> :sswitch_0
        0x7f0e021f -> :sswitch_1
        0x7f0e0222 -> :sswitch_2
    .end sparse-switch
.end method

.method public dismissDialogAndUpdateLayout(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->itemsToRemove:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationEditor stateId = AnimationEditor, sendResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected doShareViaPrint(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 8

    new-instance v4, Landroid/support/v4/print/PrintHelper;

    invoke-direct {v4, p2}, Landroid/support/v4/print/PrintHelper;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/support/v4/print/PrintHelper;->setScaleMode(I)V

    invoke-virtual {v4, v3, p1}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Print image error"

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logE(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "Print image error"

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dpToPx(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public enableAspectRatioSubMenu(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0e0341

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v1, 0x7f0e0351

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const v1, 0x7f0e0342

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v1, 0x7f0e0356

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const v1, 0x7f0e0343

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->hideScrollView()V

    const v1, 0x7f0e0347

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0e03b4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateRatioPopupParams()V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifMenuInGSIMLog(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    goto :goto_0
.end method

.method public enableDecorationSubMenu(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public enableDirectionSubMenu(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0e0343

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v1, 0x7f0e0341

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e034c

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v1, 0x7f0e0342

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v1, 0x7f0e0351

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->hideScrollView()V

    const v1, 0x7f0e0347

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateDirectionPopupParams()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e021f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifMenuInGSIMLog(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    goto :goto_0
.end method

.method public enableSpeedSubMenu(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0e0342

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v1, 0x7f0e034c

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const v1, 0x7f0e0341

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v1, 0x7f0e0343

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v1, 0x7f0e0356

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->hideScrollView()V

    const v1, 0x7f0e0347

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e041f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifMenuInGSIMLog(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V

    goto :goto_0
.end method

.method public executorHandle(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pathRuleId:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AnimationEditor: stateId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", parameters size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_0

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/bixby/data/Parameter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AnimationEditor: parameter["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v13, "AnimationEditor"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    sget-boolean v13, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    if-nez v13, :cond_1

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v13, "AnimationAdd"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doEditClick()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->doAddImage()V

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string v13, "AnimationAdd"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v13, "AnimationSpeed"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_4

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Speed"

    const-string v15, "Exist"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Speed"

    const-string v15, "Exist"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const v13, 0x7f0e0351

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->enableSpeedSubMenu(Landroid/view/View;)V

    :cond_6
    const-string v13, "Slow"

    invoke-static {v5, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const v13, 0x7f0e041f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->two_x_click(Landroid/view/View;)V

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Speed"

    const-string v15, "Valid"

    const-string v16, "yes"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v13, "Normal"

    invoke-static {v5, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const v13, 0x7f0e0421

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->five_x_click(Landroid/view/View;)V

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Speed"

    const-string v15, "Valid"

    const-string v16, "yes"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v13, "Fast"

    invoke-static {v5, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const v13, 0x7f0e0423

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ten_x_click(Landroid/view/View;)V

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Speed"

    const-string v15, "Valid"

    const-string v16, "yes"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Speed"

    const-string v15, "Valid"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v13, "AnimationDirection"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_b

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Direction"

    const-string v15, "Exist"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Direction"

    const-string v15, "Exist"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const v13, 0x7f0e0356

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->enableDirectionSubMenu(Landroid/view/View;)V

    :cond_d
    const/4 v12, 0x0

    const v13, 0x7f07007d

    move-object/from16 v0, p0

    invoke-static {v0, v5, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_f

    const v13, 0x7f0e021f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    :cond_e
    :goto_2
    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionClick(Landroid/view/View;)V

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Direction"

    const-string v15, "Valid"

    const-string v16, "yes"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const v13, 0x7f070117

    move-object/from16 v0, p0

    invoke-static {v0, v5, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_10

    const v13, 0x7f0e021c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    goto :goto_2

    :cond_10
    const v13, 0x7f070157

    move-object/from16 v0, p0

    invoke-static {v0, v5, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_e

    const v13, 0x7f0e0222

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    goto :goto_2

    :cond_11
    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Direction"

    const-string v15, "Valid"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v13, "AnimationRatio"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_13

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Ratio"

    const-string v15, "Exist"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_14

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Ratio"

    const-string v15, "Exist"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const v13, 0x7f07019e

    move-object/from16 v0, p0

    invoke-static {v0, v8, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEqualsForSlotValue(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "1:1"

    invoke-static {v8, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "4:3"

    invoke-static {v8, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "3:4"

    invoke-static {v8, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "16:9"

    invoke-static {v8, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "9:16"

    invoke-static {v8, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Ratio"

    const-string v15, "Valid"

    const-string v16, "no"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setRatioFromExecutor(Ljava/lang/String;)V

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v14, "Ratio"

    const-string v15, "Valid"

    const-string v16, "yes"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    const-string v13, "Decoration"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    const v13, 0x7f0e035b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startIntentForSuperImpose(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_17
    const-string v13, "AgifSave"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    if-nez v13, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doSaveAction()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkIfActionbarFit()Z

    move-result v13

    if-nez v13, :cond_18

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showhideActionbar(Z)V

    goto/16 :goto_1

    :cond_18
    const/4 v13, 0x0

    goto :goto_3

    :cond_19
    const-string v13, "AgifSave"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1a
    const-string v13, "CrossShare"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeShareViaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->initSetAsOrShareViaLayout(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1b
    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1c
    const-string v13, "ShareVia"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_1d
    const-string v13, "CrossShareVia"

    invoke-static {v11, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method

.method public exitLowSDCardMemory()V
    .locals 1

    const v0, 0x7f070050

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishPEService()V
    .locals 1

    const/16 v0, 0xfa4

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finishActivity(I)V

    return-void
.end method

.method public five_x_click(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e041f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e0423

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->FiveX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->FiveX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setDuration(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifSpeedInGSIMLog(I)V

    return-void
.end method

.method public four_to_three_click(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    :cond_0
    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bd

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bb

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b9

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a4_3:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a4_3:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateImageAspectRatio()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivFourThreeRatio:Landroid/widget/ImageView;

    const v1, 0x7f0201b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifRatioInGSIMLog(I)V

    return-void
.end method

.method public getFaceRectRegionfromBitmap(IILandroid/graphics/Rect;IIZZF)Landroid/graphics/RectF;
    .locals 11

    if-nez p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    int-to-float v7, p2

    mul-float v7, v7, p8

    int-to-float v8, p1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    int-to-float v7, p2

    mul-float v7, v7, p8

    float-to-int v4, v7

    move v3, p2

    if-eqz p6, :cond_4

    iget v7, p3, Landroid/graphics/Rect;->left:I

    if-ge v4, v7, :cond_3

    div-int/lit8 v7, v4, 0x2

    sub-int v7, p4, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    :goto_1
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    sub-int v7, p1, v4

    if-le v1, v7, :cond_2

    sub-int v1, p1, v4

    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v1

    const/4 v8, 0x0

    add-int v9, v1, v4

    int-to-float v9, v9

    int-to-float v10, v3

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_3
    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    div-int/lit8 v1, v7, 0x2

    goto :goto_1

    :cond_4
    sub-int v7, p1, v4

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_7

    div-int/lit8 v7, v4, 0x2

    sub-int v7, p4, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v5, v7, v8

    :goto_2
    sub-int v5, p1, v5

    sub-int v7, v5, v4

    if-gez v7, :cond_5

    move v5, v4

    :cond_5
    if-le v5, p1, :cond_6

    move v5, p1

    :cond_6
    new-instance v2, Landroid/graphics/RectF;

    sub-int v7, v5, v4

    int-to-float v7, v7

    const/4 v8, 0x0

    int-to-float v9, v5

    int-to-float v10, v3

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_7
    mul-int/lit8 v7, p1, 0x2

    iget v8, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    iget v8, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    goto :goto_2

    :cond_8
    move v4, p1

    int-to-float v7, p1

    div-float v7, v7, p8

    float-to-int v3, v7

    if-eqz p7, :cond_c

    iget v7, p3, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_b

    div-int/lit8 v7, v3, 0x2

    sub-int v7, p5, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    :goto_3
    if-gez v6, :cond_9

    const/4 v6, 0x0

    :cond_9
    sub-int v7, p2, v3

    if-le v6, v7, :cond_a

    sub-int v6, p2, v3

    :cond_a
    new-instance v2, Landroid/graphics/RectF;

    const/4 v7, 0x0

    int-to-float v8, v6

    int-to-float v9, v4

    add-int v10, v6, v3

    int-to-float v10, v10

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_b
    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v3

    div-int/lit8 v6, v7, 0x2

    goto :goto_3

    :cond_c
    sub-int v7, p2, v3

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-le v7, v8, :cond_f

    div-int/lit8 v7, v3, 0x2

    sub-int v7, p5, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v0, v7, v8

    :goto_4
    sub-int v0, p2, v0

    sub-int v7, v0, v3

    if-gez v7, :cond_d

    move v0, v3

    :cond_d
    if-le v0, p2, :cond_e

    move v0, p2

    :cond_e
    new-instance v2, Landroid/graphics/RectF;

    const/4 v7, 0x0

    sub-int v8, v0, v3

    int-to-float v8, v8

    int-to-float v9, v4

    int-to-float v10, v0

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_f
    mul-int/lit8 v7, p2, 0x2

    iget v8, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    div-int/lit8 v0, v7, 0x2

    goto :goto_4
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 12

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v10, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
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

    const/4 v6, 0x0

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

.method public getLandScapeTop()I
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method public getMarginTopLandscape()I
    .locals 1

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method public getNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newMotionInstanceTaskId:I

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentMotionTaskId:I

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeProgressDialog(Z)V

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unsupportedUriSize:I

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeUndoVisible(Z)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->removeAllAgifImage()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->destroy()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mGLLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->reInit()V

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsPlayFirst:Z

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "burst_shot"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->init()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateButtonInfoList()V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->insertAddButton()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSubMenu()V

    const v1, 0x7f0e0421

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e041f

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e0423

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e03b4

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e03b6

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e03b9

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e03bd

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e03bb

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e03b7

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e021c

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e021f

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v1, 0x7f0e0222

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;->Forward:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentDirection:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIRECTION;

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateImageAspectRatio()V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->lastClickTimeAddButton:J

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->FiveX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageList(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isFolderCloud(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAddImage:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAddImage:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->AddBaseImage(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 20

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    const/4 v6, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 v6, 0x8

    new-array v5, v6, [F

    const/4 v6, 0x0

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x1

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x2

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x3

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x4

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x5

    const/4 v8, 0x2

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x6

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/4 v6, 0x7

    const/4 v8, 0x3

    aget-object v8, p1, v8

    iget-wide v12, v8, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    double-to-float v8, v12

    aput v8, v5, v6

    const/16 v6, 0x8

    new-array v7, v6, [F

    const/4 v6, 0x0

    const/4 v8, 0x0

    aput v8, v7, v6

    const/4 v6, 0x1

    const/4 v8, 0x0

    aput v8, v7, v6

    const/4 v6, 0x2

    const/4 v8, 0x0

    aput v8, v7, v6

    const/4 v6, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    const/4 v6, 0x4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    const/4 v6, 0x5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    const/4 v6, 0x6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    const/4 v6, 0x7

    const/4 v8, 0x0

    aput v8, v7, v6

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v6, v8

    new-array v9, v6, [I

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move-object/from16 v8, p2

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v6, p3, p4

    new-array v11, v6, [I

    const/16 v6, 0x9

    new-array v0, v6, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, v18

    invoke-static {v9, v11, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->runPerspective([I[III[F)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v19

    move/from16 v13, p3

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v19
.end method

.method public getRectForCurrentAGIFFrame(Landroid/graphics/Bitmap;F)Landroid/graphics/RectF;
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v4, v5, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v4, v3

    div-float/2addr v4, p2

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    int-to-float v2, v3

    int-to-float v4, v3

    div-float v1, v4, p2

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v0

    sub-float/2addr v5, v1

    div-float/2addr v5, v8

    int-to-float v6, v0

    add-float/2addr v6, v1

    div-float/2addr v6, v8

    invoke-direct {v4, v7, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    int-to-float v1, v0

    mul-float v2, v1, p2

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    sub-float/2addr v5, v2

    div-float/2addr v5, v8

    int-to-float v6, v3

    add-float/2addr v6, v2

    div-float/2addr v6, v8

    invoke-direct {v4, v5, v7, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method protected getUpdatedBitmap(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Ljava/util/ArrayList;Ljava/util/ArrayList;III)Landroid/graphics/Bitmap;
    .locals 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;",
            ">;III)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v51, v0

    sget-object v52, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsScalerequired:Z

    move/from16 v51, v0

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabletModel()Z

    move-result v51

    if-nez v51, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTabletDevice()Z

    move-result v51

    if-eqz v51, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v51, v0

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->tabH:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->tabW:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleFitInside(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_0
    new-instance v36, Landroid/graphics/RectF;

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v36

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v37, Landroid/graphics/RectF;

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v37

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v28, Landroid/graphics/Matrix;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Matrix;-><init>()V

    sget-object v51, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v38, Landroid/graphics/RectF;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move/from16 v44, p7

    move/from16 v43, p8

    const/16 v20, 0x0

    const/16 v46, 0x0

    move/from16 v39, v44

    move/from16 v8, v43

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v51, v0

    sub-int v52, v39, v20

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    div-float v50, v51, v52

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v51, v0

    sub-int v52, v8, v46

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    div-float v14, v51, v52

    move/from16 v0, v50

    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v40

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v51, v51, v40

    invoke-static/range {v51 .. v51}, Ljava/lang/Math;->round(F)I

    move-result v26

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v51, v51, v40

    invoke-static/range {v51 .. v51}, Ljava/lang/Math;->round(F)I

    move-result v25

    sub-int v51, v39, v20

    sub-int v51, v51, v26

    div-int/lit8 v51, v51, 0x2

    add-int v23, v20, v51

    sub-int v51, v8, v46

    sub-int v51, v51, v25

    div-int/lit8 v51, v51, 0x2

    add-int v24, v46, v51

    new-instance p2, Landroid/graphics/RectF;

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v52, v0

    add-int v53, v26, v23

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    add-int v54, v25, v24

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v51

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v51

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v34, v0

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v51

    move/from16 v0, v51

    if-ge v15, v0, :cond_e

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->isPerspectiveApplied()Z

    move-result v51

    if-eqz v51, :cond_c

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getPointArray()[F

    move-result-object v33

    const/16 v51, 0x4

    move/from16 v0, v51

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v32, v0

    const/16 v51, 0x0

    new-instance v52, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/16 v53, 0x0

    aget v53, v33, v53

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v54, v0

    const/16 v53, 0x1

    aget v53, v33, v53

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, v52

    move-wide/from16 v1, v54

    move-wide/from16 v3, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v52, v32, v51

    const/16 v51, 0x1

    new-instance v52, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/16 v53, 0x2

    aget v53, v33, v53

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v54, v0

    const/16 v53, 0x3

    aget v53, v33, v53

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, v52

    move-wide/from16 v1, v54

    move-wide/from16 v3, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v52, v32, v51

    const/16 v51, 0x2

    new-instance v52, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/16 v53, 0x4

    aget v53, v33, v53

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v54, v0

    const/16 v53, 0x5

    aget v53, v33, v53

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, v52

    move-wide/from16 v1, v54

    move-wide/from16 v3, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v52, v32, v51

    const/16 v51, 0x3

    new-instance v52, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    const/16 v53, 0x6

    aget v53, v33, v53

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v54, v0

    const/16 v53, 0x7

    aget v53, v33, v53

    move/from16 v0, v53

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, v52

    move-wide/from16 v1, v54

    move-wide/from16 v3, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    aput-object v52, v32, v51

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/graphics/Bitmap;

    invoke-static/range {v51 .. v51}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v45

    const/16 v51, 0x8

    aget v51, v33, v51

    div-float v51, v51, v35

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v52, v0

    mul-float v49, v51, v52

    const/16 v51, 0x9

    aget v51, v33, v51

    div-float v51, v51, v34

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v52, v0

    mul-float v13, v51, v52

    const/16 v51, 0xa

    aget v51, v33, v51

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    div-float v51, v51, v35

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v52, v0

    mul-float v11, v51, v52

    const/16 v51, 0xb

    aget v51, v33, v51

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    div-float v51, v51, v34

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v52, v0

    mul-float v12, v51, v52

    const/16 v51, 0x0

    cmpg-float v51, v12, v51

    if-gez v51, :cond_1

    const/4 v12, 0x0

    :cond_1
    const/16 v51, 0xc

    aget v31, v33, v51

    const/16 v51, 0xd

    aget v30, v33, v51

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v52, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    move/from16 v3, v51

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getPerspectiveBitmapEngine([Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v29

    const/4 v6, 0x0

    new-instance v27, Landroid/graphics/Matrix;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v41, v49, v51

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v42, v13, v51

    move/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v0, v27

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v51, 0x40000000    # 2.0f

    div-float v51, v49, v51

    sub-float v51, v16, v51

    const/high16 v52, 0x40000000    # 2.0f

    div-float v52, v13, v52

    sub-float v52, v17, v52

    move-object/from16 v0, v27

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v51, 0x43340000    # 180.0f

    mul-float v51, v51, v6

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v52, v0

    const-wide v54, 0x400921fb54442d18L    # Math.PI

    div-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, v27

    move/from16 v1, v51

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    const/16 v51, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v51

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->recycle()V

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->tabW:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->tabH:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleFitInside(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v51, v0

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLiteVersion()Z

    move-result v51

    if-eqz v51, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->qhDH:I

    move/from16 v51, v0

    :goto_3
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLiteVersion()Z

    move-result v52

    if-eqz v52, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->qhDW:I

    move/from16 v52, v0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleFitInside(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->hDH:I

    move/from16 v51, v0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->hDW:I

    move/from16 v52, v0

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLiteVersion()Z

    move-result v51

    if-eqz v51, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->qhDW:I

    move/from16 v51, v0

    :goto_5
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLiteVersion()Z

    move-result v52

    if-eqz v52, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->qhDH:I

    move/from16 v52, v0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleFitInside(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->hDW:I

    move/from16 v51, v0

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->hDH:I

    move/from16 v52, v0

    goto :goto_6

    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v51

    if-lez v51, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v51

    if-lez v51, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v52

    move/from16 v0, v51

    move/from16 v1, v52

    if-gt v0, v1, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v52

    move/from16 v0, v51

    move/from16 v1, v52

    if-le v0, v1, :cond_b

    :cond_a
    new-instance p1, Landroid/graphics/RectF;

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move-object/from16 v0, p1

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v52, v0

    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v52, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v53, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v54, v0

    sub-float v53, v53, v54

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v54, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v55, v0

    sub-float v54, v54, v55

    move/from16 v0, v54

    float-to-int v0, v0

    move/from16 v54, v0

    move-object/from16 v0, p3

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    move/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getSize()[F

    move-result-object v48

    const/16 v51, 0x0

    aget v51, v48, v51

    div-float v51, v51, v35

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v52, v0

    mul-float v49, v51, v52

    const/16 v51, 0x1

    aget v51, v48, v51

    div-float v51, v51, v34

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v52, v0

    mul-float v13, v51, v52

    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getCenter()[F

    move-result-object v10

    const/16 v51, 0x0

    aget v51, v10, v51

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    div-float v51, v51, v35

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v52, v0

    mul-float v11, v51, v52

    const/16 v51, 0x1

    aget v51, v10, v51

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v52, v0

    sub-float v51, v51, v52

    div-float v51, v51, v34

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v52, v0

    mul-float v12, v51, v52

    const/16 v51, 0x0

    cmpg-float v51, v12, v51

    if-gez v51, :cond_d

    const/4 v12, 0x0

    :cond_d
    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerInfo;->getAngle()F

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/graphics/Bitmap;

    invoke-static/range {v51 .. v51}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v45

    new-instance v27, Landroid/graphics/Matrix;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v41, v49, v51

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v42, v13, v51

    move/from16 v16, v11

    move/from16 v17, v12

    move-object/from16 v0, v27

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v51, 0x40000000    # 2.0f

    div-float v51, v49, v51

    sub-float v51, v16, v51

    const/high16 v52, 0x40000000    # 2.0f

    div-float v52, v13, v52

    sub-float v52, v17, v52

    move-object/from16 v0, v27

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v51, 0x43340000    # 180.0f

    mul-float v51, v51, v6

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v52, v0

    const-wide v54, 0x400921fb54442d18L    # Math.PI

    div-double v52, v52, v54

    move-wide/from16 v0, v52

    double-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, v27

    move/from16 v1, v51

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    const/16 v51, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    move-object/from16 v2, v51

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v45, 0x0

    goto/16 :goto_2

    :cond_e
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 p2, 0x0

    return-object v7
.end method

.method public getWidth(I)I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    return v1
.end method

.method public hideSubMenu()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v0, 0x7f0e0342

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0351

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v0, 0x7f0e0341

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e034c

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v0, 0x7f0e0343

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v0, 0x7f0e0356

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    return-void
.end method

.method public initForDesktopMode()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$35;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$35;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public isMenusShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public lauchPermissionDialogue()V
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPermissionDialogShownAGIF(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPermissionDialogShownCollage(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPermissionDialogShownPE(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_5
    :goto_0
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    if-eqz v5, :cond_6

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->displayCustomDialogue()V

    goto :goto_0

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public launchPermissionForSaveShare()Z
    .locals 3

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public makeShareViaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 7

    const/4 v6, 0x1

    const-string v3, "display"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForScreenSharingSupport(Landroid/hardware/display/DisplayManager;)Z

    move-result v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v2, :cond_5

    const-string v3, "more_actions_screen_sharing"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInstalledQuickConnect(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInstalledOneConnect(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "more_actions_quick_connect"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    const-string v3, "more_actions_print"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1

    :cond_5
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForScreenMirroringSupport(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "more_actions_screen_mirroring"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkForChangePlayerSupport(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "more_actions_change_player"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public moveToFront(I)V
    .locals 2

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->finishPEService()V

    return-void
.end method

.method public nine_to_sixteen_click(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    :cond_0
    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b9

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b7

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bb

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a_9_16:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a_9_16:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateImageAspectRatio()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivNineSixteenRatio:Landroid/widget/ImageView;

    const v1, 0x7f0201c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifRatioInGSIMLog(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 30

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v25, 0xfa4

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    new-instance v25, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    new-instance v26, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$24;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$24;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingTask:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingTask:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v25

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    :cond_1
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeProgressDialog(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v25, "selectedItems"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_b

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    const-string v25, "\\."

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "jpg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "wbmp"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "png"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "bmp"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "jpeg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->isLowResolutionImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v17, v25

    const-string v26, "gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    const v25, 0x7f0701a2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v28, v28, v24

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_3
    const/4 v10, 0x0

    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    const v25, 0x7f07009f

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-gtz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Dialog;->hide()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    const/4 v5, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v8, v25, -0x1

    :goto_5
    if-ltz v8, :cond_10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-lt v8, v0, :cond_d

    :goto_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    const-string v25, "\\."

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v16, v25

    const-string v26, "gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    new-instance v4, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v15

    if-lez v15, :cond_f

    add-int/2addr v5, v15

    :cond_e
    :goto_7
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    if-nez v25, :cond_12

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Dialog;->isShowing()Z

    move-result v25

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    const v25, 0x7f07009f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unsupportedUriSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    add-int v25, v25, v5

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sget v26, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    move/from16 v25, v0

    if-nez v25, :cond_13

    const v25, 0x7f07009e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget v28, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v29

    sub-int v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget v28, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v29

    sub-int v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sget v26, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    :goto_8
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v21

    new-instance v25, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;II)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->thumbnailViewUpdater(II)V

    const/16 v25, 0x0

    sput v25, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->setNoOfBitmapsToLoad(I)V

    const/16 v25, 0x1

    sput-boolean v25, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getCurrentIndex()I

    move-result v25

    add-int/lit8 v19, v25, 0x1

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    const/4 v10, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_1c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_16

    :cond_14
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_15
    sget v25, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v26

    sub-int v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    goto/16 :goto_8

    :cond_16
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x2

    aget-object v25, v22, v25

    const-string v26, "Private"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    const/4 v12, 0x1

    :cond_17
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-eqz v18, :cond_14

    const-string v25, "\\."

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v25, v16, v25

    const-string v26, "gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1b

    new-instance v4, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v25

    add-int v25, v25, v15

    sget v26, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    :goto_b
    const/4 v14, 0x0

    move/from16 v20, v19

    :goto_c
    if-ge v14, v15, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z

    move-result v25

    if-eqz v25, :cond_1a

    if-nez v14, :cond_19

    new-instance v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-direct {v13, v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    iput-boolean v12, v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    add-int/lit8 v19, v20, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    :goto_d
    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v19

    goto :goto_c

    :cond_18
    sget v25, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I

    move-result v26

    sub-int v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v15

    goto :goto_b

    :cond_19
    new-instance v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-direct {v13, v0, v14}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    iput-boolean v12, v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    add-int/lit8 v19, v20, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    goto :goto_d

    :cond_1a
    move/from16 v19, v20

    goto/16 :goto_a

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z

    move-result v25

    if-eqz v25, :cond_14

    new-instance v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;)V

    iput-boolean v12, v13, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    add-int/lit8 v20, v19, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I

    move/from16 v19, v20

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->shutDownExecutor()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateDoneButton()V

    goto/16 :goto_0
.end method

.method public onAnimationFinishedSelectGridItemAtIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->onAnimationFinishedSelectGridItemAtIndex(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShowAttach:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideAttachGallery(ZZ)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShowAttach:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSubMenu()V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenu()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsModeChanged:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->ADD_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeViewMode()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setDialogContent(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showAlertDialog()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->shareToGallery(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->shareToGallery(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updatePopupPermission()V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateLayoutSize()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateCounterView()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->onOrientationChanged()V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkValueDimeninMultiwindows(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentValue:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeLanguage()V

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkIfActionbarFit(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showhideActionbar(Z)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateProgressDialog:Z

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsDecorationLaunched:Z

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setmDNIeUIMode(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeOrientation()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    if-eqz p1, :cond_1

    const-string v2, "android:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkCameraPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "attach_sheet"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "android:fragments"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-direct {p0, v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideAttachGallery(ZZ)V

    :cond_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0a0102

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0206a8

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAppIcon:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    const v2, 0x7f070070

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAppIcon:Landroid/graphics/Bitmap;

    const-string v4, "#676767"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "AnimationEditor onCreate"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getBixbyApi()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v2, :cond_3

    const-string v2, "PhotoEditor"

    invoke-static {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    :cond_3
    const-string v2, "PEDIT_MotionPhotoActivity"

    const-string v3, "onCreated is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "desktopmode"

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setRequestedOrientation(I)V

    :cond_4
    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$7;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_9

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->lauchPermissionDialogue()V

    :goto_0
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowExternalMemory(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    :cond_7
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onCreateInit()V

    :cond_8
    return-void

    :cond_9
    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    goto :goto_0
.end method

.method public onCreateInit()V
    .locals 14

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasMotionInstance()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v10, "call_from_executor"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    :goto_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getMotionTaskId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->moveToFront(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getTaskId()I

    move-result v10

    sput v10, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newMotionInstanceTaskId:I

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->passIntentMotion(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->registerMotion(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->ConfigureSALog(Landroid/app/Application;)V

    const v10, 0x7f03008b

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentView(I)V

    const-string v10, "846"

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertScreenViewSALog(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkValueDimeninMultiwindows(Landroid/app/Activity;)F

    move-result v10

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentValue:F

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->getInstance(Landroid/content/Context;)Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mActionBarButtonList:Ljava/util/ArrayList;

    const v10, 0x7f0e0336

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v10, 0x7f0e0078

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionbarLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showhideActionbar(Z)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f07027e

    invoke-static {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V

    const v10, 0x7f0e0334

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f0206b5

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->undoRemoveLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f0206b5

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_2
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    new-instance v11, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$12;

    invoke-direct {v11, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$12;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->controlTextSize()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->registerClickListener()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v10, 0x7f0e0338

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v10, 0x7f0e0331

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarCancelSave:Landroid/widget/LinearLayout;

    const v10, 0x7f0e0333

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarEditSave:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->actionBarEditSave:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v10, 0x7f0e0330

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    const v10, 0x7f0e03b2

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v10, 0x7f0e041d

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v10, 0x7f0e0225

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v10, 0x7f0e03b9

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->threeFourRatio:Landroid/widget/FrameLayout;

    const v10, 0x7f0e03b7

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->fourThreeRatio:Landroid/widget/FrameLayout;

    const v10, 0x7f0e03ba

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivThreeFourRatio:Landroid/widget/ImageView;

    const v10, 0x7f0e03b8

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivFourThreeRatio:Landroid/widget/ImageView;

    const v10, 0x7f0e03bd

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->nineSixteenRatio:Landroid/widget/FrameLayout;

    const v10, 0x7f0e03be

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivNineSixteenRatio:Landroid/widget/ImageView;

    const v10, 0x7f0e03bb

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sixteenNineRatio:Landroid/widget/FrameLayout;

    const v10, 0x7f0e03bc

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivSixteenNineRatio:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivNineSixteenRatio:Landroid/widget/ImageView;

    const v11, 0x7f0201c8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivSixteenNineRatio:Landroid/widget/ImageView;

    const v11, 0x7f0201fc

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0207c6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    const v11, 0x7f0e008a

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-static {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->setHovering(Landroid/content/Context;Landroid/view/View;)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    new-instance v11, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;

    invoke-direct {v11, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    const v11, 0x7f0e0332

    invoke-virtual {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-direct {v10, p0, v11, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButton:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    const v10, 0x7f0e0332

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f0700da

    invoke-static {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButton:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->setEnabled(Z)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    const v11, 0x3e99999a    # 0.3f

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    new-instance v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    const v11, 0x7f0e0328

    invoke-virtual {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-direct {v10, p0, v11, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->cancelButton:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->cancelButton:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    const v11, 0x7f0e0328

    invoke-virtual {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f070092

    invoke-static {p0, v12}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->setContentDescription(Landroid/view/View;Ljava/lang/String;)V

    const v10, 0x7f0e032c

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    const v10, 0x7f0e032b

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mainLayout:Landroid/widget/FrameLayout;

    const v10, 0x7f0e0186

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mGLLayout:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mGLLayout:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_4

    new-instance v10, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-direct {v10, p0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mGLLayout:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setBackgroundForButtons()V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v10

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceWidth:I

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v10

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceHeight:I

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceWidth:I

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->deviceHeight:I

    invoke-static {v10, v11}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->setPreviewSize(II)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->initLocaleChangedBroadcastReceiver()V

    invoke-direct {p0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->registerPrivateModeReceiver(Landroid/content/Context;)V

    const v10, 0x7f0e0249

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sv:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scrollObserver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->registerScrollObserver(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;)V

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeProgressDialog(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "burst_shot"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->init()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateButtonInfoList()V

    const v10, 0x7f0e0355

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    const v10, 0x7f0e0350

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    const v10, 0x7f0e034b

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    const v10, 0x7f0e035a

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->initTextViewProperties()V

    iget-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    if-nez v10, :cond_5

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->insertAddButton()V

    :cond_5
    const v10, 0x7f0e0421

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setSelected(Z)V

    const v10, 0x7f0e03b4

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setSelected(Z)V

    const v10, 0x7f0e021c

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setSelected(Z)V

    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    const v10, 0x7f0e032d

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/FileHandler;->initAGifFolder()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isPortrait()Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x0

    const/16 v11, 0x38

    invoke-virtual {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-direct {v10, p0}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageList(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-direct {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isFolderCloud(Ljava/util/ArrayList;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    invoke-direct {v10, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAddImage:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAddImage:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    :goto_2
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewWidth:I

    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->photoViewHeight:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setAdjustViewBounds(Z)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setVisibility(I)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$14;

    invoke-direct {v10, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$14;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v5, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->aOrig:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->initSaveYesNoCancelForFinish()V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gif_setting_changed:Z

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->lastClickTimeAddButton:J

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mainLayout:Landroid/widget/FrameLayout;

    new-instance v11, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$15;

    invoke-direct {v11, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$15;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->registerPrintReceiver()V

    const/4 v10, 0x4

    invoke-static {p0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setmDNIeUIMode(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inflateAgifBottomMenu()V

    const v10, 0x7f0e032e

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    const v11, 0x7f0e0330

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    new-instance v11, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;

    invoke-direct {v11, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setHoveringForUIElements()V

    sget-object v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DIALOG:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    invoke-direct {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setDialogContent(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;)V

    const v10, 0x7f0e0421

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->five_x_click(Landroid/view/View;)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    invoke-direct {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeSpeedToDuration(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;)I

    move-result v10

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDuration:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f0e0330

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    const v11, 0x7f0e0336

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    const v10, 0x7f0e0335

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f0e0088

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0099

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const v11, 0x3e4ccccd    # 0.2f

    invoke-static {v7, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0099

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const v11, 0x3e4ccccd    # 0.2f

    invoke-static {v8, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateLayoutSize()V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->AddBaseImage(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_8
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x9

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v10

    const/16 v11, 0x38

    invoke-virtual {p0, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dpToPx(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->motionPhotoMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-direct {v10, p0}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageList(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-direct {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isFolderCloud(Ljava/util/ArrayList;)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v10, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    invoke-direct {v10, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAddImage:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAddImage:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v10, v11}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->AddBaseImage(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->deRegisterMotion(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentMotionTaskId:I

    if-eq v1, v4, :cond_0

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentMotionTaskId:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getTaskId()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentMotionTaskId:I

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->moveToFront(I)V

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentMotionTaskId:I

    :cond_0
    invoke-direct {p0, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unregisterPrivateModeReceiver(Landroid/content/Context;)V

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingTask:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingTask:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingTask:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->cancel(Z)Z

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->destroy()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    :cond_6
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->itemsToRemove:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->itemsToRemove:Ljava/util/ArrayList;

    :cond_7
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->destroy()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    :cond_8
    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->destroy()V

    :cond_9
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->destroy()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    :cond_a
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->faceRects:Ljava/util/ArrayList;

    :cond_b
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;

    :cond_c
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_d

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    :cond_d
    :goto_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIR_DECO:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->destroy()V

    :cond_e
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_f
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAppIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAppIcon:Landroid/graphics/Bitmap;

    :cond_10
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasMotionInstance()Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIR_DECO:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    :cond_11
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShowAttach:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideAttachGallery(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkIfActionbarFit()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showhideActionbar(Z)V

    :cond_2
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsDecorationLaunched:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$17;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->passNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onBackPressed()V

    :goto_0
    return v2

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doRemoveLayout()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkIfActionbarFit()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showhideActionbar(Z)V

    goto :goto_0

    :sswitch_1
    const v3, 0x7f07029f

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doSaveClick()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkIfActionbarFit()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showhideActionbar(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0478 -> :sswitch_1
        0x7f0e047c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    if-nez v6, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :goto_0
    return-void

    :cond_0
    sget-boolean v6, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pauseAgif()V

    :cond_1
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v3, v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setClearViewBrightnessMode"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    aput-object v2, v0, v6

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "setClearViewBrightnessMode true"

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setmDNIeUIMode(Landroid/content/Context;I)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    array-length v2, p3

    if-le v2, v0, :cond_0

    aget v2, p3, v0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onCreateInit()V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_4

    array-length v2, p3

    if-le v2, v0, :cond_3

    aget v2, p3, v0

    if-nez v2, :cond_3

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    if-nez v1, :cond_5

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 10

    const/high16 v8, 0x1000000

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    const-string v7, "PEDIT_MotionPhotoActivity"

    const-string v8, "onResume is called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowExternalMemory(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    :cond_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isStorePermissionGranted(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onCreateInit()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->permissionGranted:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    if-eqz v7, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_3
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getApplicationContext()Landroid/content/Context;

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

    const-string v7, "setClearViewBrightnessMode true"

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v7, 0x4

    invoke-static {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setmDNIeUIMode(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    const v8, 0x7f07000f

    invoke-static {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifAddButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->setContentDescriptionForAddButton()V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->launchAddMode()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setContentDescriptionForDeleteButton()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-boolean v7, v7, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isGridPortrait:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isPortrait()Z

    move-result v8

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->onOrientationChanged()V

    :cond_5
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->onResume()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    const v8, 0x7f07000f

    invoke-static {p0, v8}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShowAttach:Z

    if-eqz v0, :cond_0

    const-string v0, "attach_sheet"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->onPause()V

    :cond_0
    return-void
.end method

.method public one_to_one_click(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    if-ne v0, v2, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    :cond_0
    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b9

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bd

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bb

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b7

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a1_1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a1_1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateImageAspectRatio()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V

    :cond_2
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifRatioInGSIMLog(I)V

    return-void
.end method

.method public passNewIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;->SAVE_DISCARD_EXIT:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currDialogType:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$DIALOG_TYPE;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070355

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$50;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$50;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070181

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$49;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$49;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070092

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$48;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$48;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public playPauseAgif(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->pause()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setCurrentIndex(I)V

    :cond_1
    return-void
.end method

.method public readOriginalBmpFromFile()V
    .locals 19

    new-instance v10, Ljava/io/File;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " directory doesn\'t exist"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    if-eqz v13, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v13

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    const-string v4, "PEDIT_MotionPhotoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v13

    new-array v0, v4, [Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    :cond_1
    const/4 v15, 0x0

    const/4 v14, 0x0

    if-eqz v16, :cond_3

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v16

    array-length v6, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v12, v4, :cond_3

    new-instance v18, Ljava/util/StringTokenizer;

    aget-object v4, v13, v12

    const-string v6, "--"

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readOriginalBmpFromFile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v18, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v13, v12

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    aput-object v2, v16, v12

    const/4 v3, 0x0

    if-eqz v16, :cond_2

    aget-object v4, v16, v12

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    aget-object v6, v16, v12

    invoke-virtual {v4, v6, v12}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->updateBitmap(Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v12, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setThumb(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x0

    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIR_DECO:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    :goto_1
    return-void

    :catch_0
    move-exception v11

    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readOriginalBmpFromFile Exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIR_DECO:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIR_DECO:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    throw v4
.end method

.method public readOriginalBmpFromFilewithIndex(I)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v11, Ljava/util/StringTokenizer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mFileNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, "--"

    invoke-direct {v11, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readOriginalBmpFromFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mFileNames:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v1, 0x0

    return-object v0
.end method

.method public readOriginalBmpSizeFromFilewithIndex(I)[I
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mFileNames:[Ljava/lang/String;

    aget-object v5, v5, p1

    const-string v6, "--"

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readOriginalBmpFromFile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v0, v5, v6

    return-object v5
.end method

.method public scaleCenterCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v0, p3

    int-to-float v14, v0

    int-to-float v15, v9

    div-float v12, v14, v15

    move/from16 v0, p2

    int-to-float v14, v0

    int-to-float v15, v8

    div-float v13, v14, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    int-to-float v14, v9

    mul-float v7, v5, v14

    int-to-float v14, v8

    mul-float v6, v5, v14

    move/from16 v0, p3

    int-to-float v14, v0

    sub-float/2addr v14, v7

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    move/from16 v0, p2

    int-to-float v14, v0

    sub-float/2addr v14, v6

    const/high16 v15, 0x40000000    # 2.0f

    div-float v11, v14, v15

    new-instance v10, Landroid/graphics/RectF;

    add-float v14, v4, v7

    add-float v15, v11, v6

    invoke-direct {v10, v4, v11, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v14, v10, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v3
.end method

.method public scaleCenterCropFaceRect(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    if-ge v2, v5, :cond_0

    const/4 v8, 0x1

    :cond_0
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v4, v5

    if-ge v2, v5, :cond_1

    const/4 v9, 0x1

    :cond_1
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v4, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a1_1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v5, :cond_4

    const/high16 v10, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    move-object v2, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getFaceRectRegionfromBitmap(IILandroid/graphics/Rect;IIZZF)Landroid/graphics/RectF;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    if-lez v2, :cond_3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    if-gtz v2, :cond_a

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a4_3:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v5, :cond_5

    const v10, 0x3faaaaab

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a3_4:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v5, :cond_6

    const/high16 v10, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a16_9:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v5, :cond_8

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    const v10, 0x3fe38e39

    goto :goto_0

    :cond_7
    const v10, 0x3fcccccd    # 1.6f

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a_9_16:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-ne v2, v5, :cond_2

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isScreenRatio1610(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    const/high16 v10, 0x3f100000    # 0.5625f

    goto :goto_0

    :cond_9
    const/high16 v10, 0x3f200000    # 0.625f

    goto :goto_0

    :cond_a
    iget v2, v12, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v5, v12, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->scaleCenterCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method public scaleFitInside(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 19

    if-nez p1, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v13, v12

    int-to-float v14, v5

    div-float v9, v13, v14

    move/from16 v0, p3

    int-to-float v13, v0

    move/from16 v0, p2

    int-to-float v14, v0

    div-float v10, v13, v14

    move/from16 v4, p3

    move/from16 v3, p2

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v10, v13

    if-lez v13, :cond_2

    move/from16 v0, p2

    int-to-float v13, v0

    mul-float/2addr v13, v9

    float-to-int v4, v13

    move/from16 v0, p3

    if-le v4, v0, :cond_1

    move/from16 v4, p3

    move/from16 v0, p3

    int-to-float v13, v0

    div-float/2addr v13, v9

    float-to-int v3, v13

    sub-int v13, p2, v3

    div-int/lit8 v7, v13, 0x2

    const/4 v6, 0x0

    :goto_1
    new-instance v8, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v12, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/RectF;

    int-to-float v15, v6

    int-to-float v0, v7

    move/from16 v16, v0

    add-int v17, v4, v6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-int v18, v3, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13, v14, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    sub-int v13, p3, v4

    div-int/lit8 v6, v13, 0x2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move/from16 v0, p3

    int-to-float v13, v0

    div-float/2addr v13, v9

    float-to-int v3, v13

    move/from16 v0, p2

    if-le v3, v0, :cond_3

    move/from16 v3, p2

    move/from16 v0, p2

    int-to-float v13, v0

    mul-float/2addr v13, v9

    float-to-int v4, v13

    sub-int v13, p3, v4

    div-int/lit8 v6, v13, 0x2

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    sub-int v13, p2, v3

    div-int/lit8 v7, v13, 0x2

    const/4 v6, 0x0

    goto :goto_1
.end method

.method public sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationEditor stateId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    return-void
.end method

.method public sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationEditor NLG: AnimationEditor-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v2, "AnimationEditor"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationEditor stateId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    return-void
.end method

.method public setItemView(Landroid/widget/ImageView;FLandroid/graphics/Rect;II)V
    .locals 0

    return-void
.end method

.method public setRatioFromExecutor(Ljava/lang/String;)V
    .locals 8

    const v7, 0x7f0e034c

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->enableAspectRatioSubMenu(Landroid/view/View;)V

    :cond_0
    const v7, 0x7f0e03b4

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0e03b6

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0e03b9

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0e03b7

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f0e03bd

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f0e03bb

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_1

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->SLOT_VALUE_ORIGINAL:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->crop_original_click(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v7, "1:1"

    invoke-static {p1, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->one_to_one_click(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const-string v7, "4:3"

    invoke-static {p1, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->four_to_three_click(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const-string v7, "3:4"

    invoke-static {p1, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->three_to_four_click(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    const-string v7, "16:9"

    invoke-static {p1, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->sixteen_to_nine_click(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    const-string v7, "9:16"

    invoke-static {p1, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->nine_to_sixteen_click(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSaveEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButton:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->setEnabled(Z)V

    return-void
.end method

.method public shareToGallery(Ljava/lang/String;)V
    .locals 6

    const-string v3, "PEDIT_MotionPhotoActivity"

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

    move-object v0, p0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "saved_uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "PEDIT_MotionPhotoActivity"

    const-string v4, "Setting Result SUCCESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public showNoImageToast()V
    .locals 1

    const-string v0, "No images to make motion photo"

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public sixteen_to_nine_click(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    :cond_0
    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b9

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bd

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b7

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a16_9:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a16_9:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateImageAspectRatio()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivSixteenNineRatio:Landroid/widget/ImageView;

    const v1, 0x7f0201fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifRatioInGSIMLog(I)V

    return-void
.end method

.method public startIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->startSelection(I)V

    return-void
.end method

.method public startIndex(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->startSelection(IZ)V

    return-void
.end method

.method public startIntentForSuperImpose(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v1, "846"

    const-string v2, "8557"

    const-string v3, "Decoration"

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->aspectRatioSubMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v1, 0x7f0e034c

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z

    const v1, 0x7f0e0341

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->speedSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v1, 0x7f0e0351

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z

    const v1, 0x7f0e0342

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionSubMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->directionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v1, 0x7f0e0356

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const v1, 0x7f0e0343

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->hideScrollView()V

    const v1, 0x7f0e0347

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pauseAgif()V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showUndoDialog()V

    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getCurrentIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getOrgBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startIntentToLPE(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public ten_x_click(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e041f

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e0421

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TenX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TenX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setDuration(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifSpeedInGSIMLog(I)V

    return-void
.end method

.method public three_to_four_click(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    if-ne v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doesSameAspectRatio:Z

    :cond_0
    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bd

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03bb

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e03b7

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a3_4:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;->a3_4:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateImageAspectRatio()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->ivThreeFourRatio:Landroid/widget/ImageView;

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->previousRatio:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifRatioInGSIMLog(I)V

    return-void
.end method

.method public two_x_click(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0e0421

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    const v0, 0x7f0e0423

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setContentDescriptionForUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TwoX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;->TwoX:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentSpeed:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$SPEED;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setDuration(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->gsimLogsInstance:Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils$GSIMLogs;->insertAgifSpeedInGSIMLog(I)V

    return-void
.end method

.method public updateBitmapList(ILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->put(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateButtonInfoList()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->buttonInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$EffectButtonInfo;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$EffectButtonInfo;-><init>(IIII)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->buttonInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->buttonInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method protected updateContentDescription()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isShareViaEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f07027e

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f07029f

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateDoneButton()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isMarkedForDelete()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-gt v2, v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButton:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ButtonWrapper;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->doneButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_1
.end method

.method public updateFaceRectAfterDecoration(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .locals 10

    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    int-to-float v8, p2

    int-to-float v9, p4

    div-float v7, v8, v9

    int-to-float v8, p3

    int-to-float v9, p5

    div-float v0, v8, v9

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    int-to-float v8, p2

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v8, p3

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v8, p4, v4

    div-int/lit8 v1, v8, 0x2

    sub-int v8, p5, v3

    div-int/lit8 v2, v8, 0x2

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v8, v2

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public updateFocusAttribute(Z)V
    .locals 3

    const v2, 0x7f0e0347

    const v1, 0x7f0e032e

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setNextFocusDownId(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->backButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->saveLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setNextFocusDownId(I)V

    goto :goto_0
.end method

.method public updatePopupPermission()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->displayCustomDialogue()V

    :cond_0
    return-void
.end method

.method public writeADumouToFile(Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v4, 0x1

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v4

    :cond_0
    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->FILE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fails to create"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v5, "agif_test.jpg"

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeOriginalBmpToFile(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V
    .locals 14

    new-instance v1, Ljava/io/File;

    sget-object v11, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->deleteFolder(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " created sucessfully"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const v11, 0x7f0200d8

    invoke-static {p0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsScalerequired:Z

    const/4 v6, 0x0

    :goto_1
    iget-object v11, p1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_4

    iget-object v11, p1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getBitmapHeight()I

    move-result v4

    if-nez v6, :cond_1

    move v3, v10

    move v2, v4

    :cond_1
    if-ne v10, v3, :cond_2

    if-ne v4, v2, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "tmp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getIntArray()[I

    move-result-object v9

    invoke-static {v9, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->writeBmp([ILjava/lang/String;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->FILE_DIRECTORY_DECO:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " creation failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-ne v6, v7, :cond_5

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsScalerequired:Z

    :cond_5
    const-string v11, "SATC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index  :  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "matchCounter  :  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mIsScalerequired  :  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsScalerequired:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_2
    iget-object v11, p1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    if-eq v11, v5, :cond_6

    iget-object v11, p1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, p1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
