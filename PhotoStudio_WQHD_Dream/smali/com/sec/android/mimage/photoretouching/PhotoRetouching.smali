.class public Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.super Landroid/app/Activity;
.source "PhotoRetouching.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;,
        Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static APPLY_BLACKFRAME_HACK:Z = false

.field public static final EXIT_BROADCAST:Ljava/lang/String; = "exit_broadcast"

.field private static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final MSCS_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final MY_PERMISSIONS_REQUEST:I = 0xb

.field private static final MY_PERMISSION_REQUEST_SAVE_SHARE:I = 0x16

.field private static final TAG:Ljava/lang/String; = "PEDIT_Photoretouching"


# instance fields
.field private final ATTACH_SHEET:Ljava/lang/String;

.field private dialogPermission:Landroid/app/AlertDialog;

.field private dummyBmp:Landroid/graphics/Bitmap;

.field private isApplyBlurService:Z

.field private isCallFromExecutor:Z

.field private isFistTimeFromLauncher:Z

.field public isServiceActive:Z

.field private latestIntent:Landroid/content/Intent;

.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mBixbyHandler:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

.field private mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

.field mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mExitReceiver:Landroid/content/BroadcastReceiver;

.field private mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

.field private mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

.field private mGLLayout:Landroid/widget/FrameLayout;

.field private mIsBoundWithQuickViewService:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;

.field private mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

.field private mPrintReceiver:Landroid/content/BroadcastReceiver;

.field private mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRotation:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSettingPermission:Z

.field private menu:Landroid/view/Menu;

.field private permissionGranted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->APPLY_BLACKFRAME_HACK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isCallFromExecutor:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isApplyBlurService:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mSettingPermission:Z

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;

    const-string v0, "attach_sheet"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->ATTACH_SHEET:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mIsBoundWithQuickViewService:Z

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$3;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mExitReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mRotation:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finishActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/service/IFinishService;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    return-object p1
.end method

.method private applyBlackFrameHack()V
    .locals 6

    const v1, 0x7f0e02fc

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isImageLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isExiting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private applyBlurPreview()V
    .locals 8

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x0

    aget v5, v1, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getScreenWidth()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v1, v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getScreenHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    invoke-interface {v3, v2}, Lcom/sec/android/mimage/photoretouching/service/IFinishService;->setBoundary(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->createBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/mimage/photoretouching/service/IFinishService;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/service/IFinishService;->showBlurImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finishActivity()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finishActivity()V

    goto :goto_0
.end method

.method private bindBlurImageService()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mIsBoundWithQuickViewService:Z

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.mimage.photoretouching"

    const-string v3, "com.sec.android.mimage.photoretouching.service.FinishService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mIsBoundWithQuickViewService:Z

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkOverlayPermission()V

    return-void
.end method

.method private canApplyBlur()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkIfIntentFromGallery()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isApplyBlurService:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getHistoryManager()Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getHistoryManager()Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hasSavedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIntentFromGallery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createBlurBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getHistoryManager()Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->getSavedPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {p0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private displayCustomDialogue()V
    .locals 4

    new-instance v1, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->populateDialogue()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f07029d

    new-instance v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f070092

    new-instance v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mSettingPermission:Z

    new-instance v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private finishActivity()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->overridePendingTransition(II)V

    return-void
.end method

.method private initFistTimeFromLauncher(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setIntent(Landroid/content/Intent;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->initUI()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isOpenServiceAgain(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "service"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "service"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_again"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private islibAutoEnhanceExists()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isImageEnhanced:Z

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/lib/libAutoEnhance.so"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->enableAutoEnhance(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerChangePlayerReceiver()V
    .locals 3

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private registerExitReceiver()V
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "exit_broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerPrintReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPrivateModeReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unbindBlurImageService()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mIsBoundWithQuickViewService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mIsBoundWithQuickViewService:Z

    :cond_0
    return-void
.end method

.method private unregisterChangePlayerReceiver()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private unregisterExitReceiver()V
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private unregisterLocaleChangedReceiver()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private unregisterPrintReceiver()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private unregisterPrivateModeReceiver(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method


# virtual methods
.method public applyDummyBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->APPLY_BLACKFRAME_HACK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dummyBmp:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public checkIfIntentFromGallery()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkIfIntentFromCapture(Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkIfIntentFromGallery(Landroid/net/Uri;)V

    return-void
.end method

.method public checkOverlayPermission()V
    .locals 4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected doShareViaPrint(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Landroid/support/v4/print/PrintHelper;

    invoke-direct {v5, p2}, Landroid/support/v4/print/PrintHelper;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getSavePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/support/v4/print/PrintHelper;->setScaleMode(I)V

    invoke-virtual {v5, v4, p1}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->canApplyBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->applyBlurPreview()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finishActivity()V

    goto :goto_0
.end method

.method public initLocaleChangedBroadcastReceiver()V
    .locals 2

    new-instance v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public launchPermissionDialogue()V
    .locals 6

    const/16 v5, 0xb

    const/4 v4, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPermissionDialogShownPE(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    if-eqz v3, :cond_5

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->displayCustomDialogue()V

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->requestPermissions([Ljava/lang/String;I)V

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

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkSelfPermission(Ljava/lang/String;)I

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

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->requestPermissions([Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveToFront(I)V
    .locals 5

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v3, p1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EffectManagerActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PhotoRetouching"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MultiGridActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionPhotoActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isMainInstanceService()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;->start()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    const/16 v2, 0x270f

    if-ne p1, v2, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    invoke-interface {v2}, Lcom/sec/android/mimage/photoretouching/service/IFinishService;->addQuickView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    invoke-static {p3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertIntentFromLauncher(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->latestIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->latestIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->initFistTimeFromLauncher(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInPinWindowsMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isCallFromExecutor:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onBackPressed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/16 v5, 0x80

    const/16 v4, 0x1000

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->updatePopupPermission()V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v2, :cond_8

    invoke-static {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->onOrientationChanged(I)V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onLanguageChanged()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->hideAttachSheet(Z)V

    :cond_a
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onFontScaleChanged()V

    :cond_b
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->reCreateDialogScreenResolution()V

    :cond_c
    invoke-static {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v2, v3, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->onOrientationChanged(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onOrientationChanged(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->requestRender()V

    :cond_e
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->resetDrawingSpenView()V

    :cond_f
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onLayoutChangeRTLForAdjustment()V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onContextMenuItemSelected(Landroid/view/MenuItem;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLauncher(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "call_from_executor"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isCallFromExecutor:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "need_result"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isApplyBlurService:Z

    :cond_0
    if-eqz p1, :cond_2

    const-string v1, "android:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkCameraPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "attach_sheet"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "android:fragments"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->hideAttachSheet(Z)V

    :cond_2
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0206aa

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mAppIcon:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mAppIcon:Landroid/graphics/Bitmap;

    const-string v3, "#676767"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "PhotoEditor onCreate"

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getBixbyApi()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v1, :cond_4

    const-string v1, "PhotoEditor"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->islibAutoEnhanceExists()V

    const-string v1, "desktopmode"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setRequestedOrientation(I)V

    :goto_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_9

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->launchPermissionDialogue()V

    :goto_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowExternalMemory(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_9
    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    goto :goto_1

    :cond_a
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onCreateInit()V

    :cond_b
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isCallFromExecutor:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertIntentFromLauncher(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->latestIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->latestIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->initFistTimeFromLauncher(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$6;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$6;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateInit()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPEInstanceSerivceActive()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOpenServiceAgain(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPEInstance()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v7, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getTaskId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->moveToFront(I)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "service"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "service"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "decoration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_3
    sput-boolean v11, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isApplyDummy:Z

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->register(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->ConfigureSALog(Landroid/app/Application;)V

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v7, :cond_e

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-direct {v7, v8, v12}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isCallFromExecutor:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v8, 0x6

    invoke-virtual {v7, v11, v8}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage(II)V

    :cond_4
    :goto_1
    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;-><init>(Lcom/samsung/android/sdk/bixby/BixbyApi;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyHandler:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->setLayerManager(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    new-instance v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;

    invoke-direct {v7, p0, v12}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;)V

    new-array v8, v10, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$InitAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const v7, 0x7f030088

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(I)V

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertScreenViewSALog(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f0e0111

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0300ca

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->initUI()V

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v7, 0x7f0e0186

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    sget-boolean v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->APPLY_BLACKFRAME_HACK:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mSettingPermission:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "service"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "service"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "decoration_360"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v7, 0x7f0e02fc

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_8
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerForContextMenu(Landroid/view/View;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mSettingPermission:Z

    if-ne v7, v11, :cond_9

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mSettingPermission:Z

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->initLocaleChangedBroadcastReceiver()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerPrintReceiver()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerChangePlayerReceiver()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerPrivateModeReceiver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->registerExitReceiver()V

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkIfIntentFromGallery()V

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getReferrer()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->setReferrer(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPEInstance()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isCallFromExecutor:Z

    if-eqz v7, :cond_c

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finishActivity()V

    :goto_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getTaskId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->moveToFront(I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getTaskId()I

    move-result v7

    sput v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newInstanceTaskId:I

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->passIntent(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getReferrer()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->GALLERY_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-nez v5, :cond_d

    sput-boolean v11, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromGallery:Z

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    goto :goto_2

    :cond_d
    sput-boolean v10, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromGallery:Z

    goto :goto_3

    :cond_e
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->latestIntent:Landroid/content/Intent;

    if-eqz v7, :cond_f

    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->latestIntent:Landroid/content/Intent;

    invoke-direct {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object v12, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->latestIntent:Landroid/content/Intent;

    goto/16 :goto_1

    :cond_f
    new-instance v7, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setMenu(Landroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mAppIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mAppIcon:Landroid/graphics/Bitmap;

    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->deRegister(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getPendingRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getPendingRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isMainInstance(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    if-eq v0, v1, :cond_3

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->moveToFront(I)V

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    :cond_3
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isMainInstance(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->close()V

    :cond_4
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->deRegister(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->resetDataTaken()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterPrintReceiver()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterLocaleChangedReceiver()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLocaleChangedReceiver:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$LocaleChangedBroadcastReceiver;

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterChangePlayerReceiver()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterPrivateModeReceiver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unregisterExitReceiver()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    :cond_6
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->menu:Landroid/view/Menu;

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isToastShown:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onKeyDown(Landroid/view/KeyEvent;I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onKeyUp(Landroid/view/KeyEvent;I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    const-string v0, "PhotoRetouching::onMultiWindowModeChanged"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "request_cancel_effects_manager"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    :cond_0
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "need_result"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isApplyBlurService:Z

    const-string v4, "selectedItems"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selectedItems"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isServiceActive:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f070135

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finishActivity(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->initFistTimeFromLauncher(Landroid/content/Intent;)V

    sget-boolean v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromGallery:Z

    sput-boolean v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIntentFromGallery:Z

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newInstanceTaskId:I

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onNewIntent(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e0097

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e0478

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e009a

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e0479

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->launchPermissionForSaveShare()Z

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onMenuClick(I)V

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyHandler:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyHandler:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->onPause()V

    :cond_2
    const-string v1, "sys.mdniecontrolservice.mscon"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setmDNIeUIMode(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    array-length v2, p3

    if-le v2, v0, :cond_1

    aget v2, p3, v0

    if-nez v2, :cond_1

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onCreateInit()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->menu:Landroid/view/Menu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->menu:Landroid/view/Menu;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setMenu(Landroid/view/Menu;)V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onResume()V

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_6

    array-length v2, p3

    if-le v2, v0, :cond_5

    aget v2, p3, v0

    if-nez v2, :cond_5

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    if-nez v1, :cond_7

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    :cond_7
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

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
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isStorePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onCreateInit()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->menu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->menu:Landroid/view/Menu;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->setMenu(Landroid/view/Menu;)V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onResume()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFistTimeFromLauncher:Z

    if-eqz v1, :cond_4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowExternalMemory(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onResume()V

    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyHandler:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyHandler:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->onResume()V

    :cond_7
    const-string v1, "sys.mdniecontrolservice.mscon"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_9

    :cond_8
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_9
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bindBlurImageService()V

    :cond_a
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_b
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setmDNIeUIMode(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const v1, 0x7f0e00de

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "attach_sheet"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->onResume()V

    :cond_0
    return-void
.end method

.method public onStateClicked(Landroid/view/View;)V
    .locals 2

    const-string v0, "PEDIT_Photoretouching"

    const-string v1, " PhotoRetouching onStateClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onStateClicked(Landroid/view/View;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->unbindBlurImageService()V

    return-void
.end method

.method public removeHackFrame()V
    .locals 3

    sget-boolean v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->APPLY_BLACKFRAME_HACK:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-eqz v1, :cond_1

    const v1, 0x7f0e02fc

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "decoration_360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyHandler:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mBixbyHandler:Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixbyHandler;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    return-void
.end method

.method public showChangePlayerDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->show()V

    :cond_1
    return-void
.end method

.method public updatePopupPermission()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->displayCustomDialogue()V

    :cond_0
    return-void
.end method
