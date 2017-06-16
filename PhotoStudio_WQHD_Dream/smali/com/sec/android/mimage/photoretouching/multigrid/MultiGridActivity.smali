.class public Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;
.super Landroid/app/Activity;
.source "MultiGridActivity.java"


# static fields
.field private static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final MY_PERMISSIONS_REQUEST:I = 0xb

.field private static final MY_PERMISSION_REQUEST_SAVE_SHARE:I = 0x16

.field private static final PERSONAL_PAGE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field private static final TAG:Ljava/lang/String; = "PEDIT_MultiGridActivity"

.field public static mInstance:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;


# instance fields
.field private final ATTACH_SHEET:Ljava/lang/String;

.field private dialogPermission:Landroid/app/AlertDialog;

.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

.field private mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

.field private mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field private mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

.field private mCollageWidgetPaused:Z

.field mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

.field private mGLLayout:Landroid/widget/FrameLayout;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

.field private mPrintReceiver:Landroid/content/BroadcastReceiver;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private menu:Landroid/view/Menu;

.field private pathRuleId:Ljava/lang/String;

.field private permissionGranted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidgetPaused:Z

    const-string v0, "attach_sheet"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->ATTACH_SHEET:Ljava/lang/String;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$2;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$3;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->pathRuleId:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$7;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    return-object v0
.end method

.method private displayCustomDialogue()V
    .locals 4

    new-instance v1, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->populateDialogue()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f07029d

    new-instance v3, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$5;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f070092

    new-instance v3, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$6;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$6;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private registerChangePlayerReceiver()V
    .locals 3

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private registerPrintReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPrivateModeReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setRatioFromExecutor(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->resetCurrMain()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const v1, 0x7f0e019d

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    const-string v0, "1:1"

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const v1, 0x7f0e0120

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "Ratio"

    const-string v2, "Valid"

    const-string v3, "yes"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "9:16"

    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const v1, 0x7f0e0123

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "Ratio"

    const-string v2, "Valid"

    const-string v3, "yes"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "Ratio"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterChangePlayerReceiver()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mMoreOptionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
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
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mPrintReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
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

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method


# virtual methods
.method protected doShareViaPrint(Landroid/net/Uri;)V
    .locals 8

    new-instance v5, Landroid/support/v4/print/PrintHelper;

    invoke-direct {v5, p0}, Landroid/support/v4/print/PrintHelper;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->getSavePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :cond_1
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

.method public executorHandle(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 11

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->getPathRuleId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->pathRuleId:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CollageEditor: stateId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", parameters size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CollageEditor: parameter["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "CollageEditor"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v7, "CollageRatio"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v8, "Ratio"

    const-string v9, "Exist"

    const-string v10, "no"

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "CollageEditor: Missing parameter"

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v8, "Ratio"

    const-string v9, "Exist"

    const-string v10, "no"

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->setRatioFromExecutor(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v7, "CollageAddImage"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const v8, 0x7f0e0476

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string v7, "CollageEditor"

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v7, "Shuffle"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const v8, 0x7f0e0477

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string v7, "CollageEditor"

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v7, "CollageBorder"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->resetCurrMain()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const v8, 0x7f0e01a7

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string v7, "CollageBorder"

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v7, "CollageBG"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->resetCurrMain()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const v8, 0x7f0e01ac

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string v7, "CollageBG"

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v7, "CollageLayout"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->resetCurrMain()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const v8, 0x7f0e01a2

    invoke-virtual {v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string v7, "CollageLayout"

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v7, "CollageSave"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doSaveFromExecutor()V

    goto/16 :goto_1

    :cond_b
    const-string v7, "CrossShare"

    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->getSavePath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->getSavePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->getSubModeFromParameter(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->shareVia(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method

.method public lauchPermissionDialogue()V
    .locals 6

    const/16 v5, 0xb

    const/4 v4, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPermissionDialogShownCollage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    if-eqz v3, :cond_5

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->displayCustomDialogue()V

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestPermissions([Ljava/lang/String;I)V

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

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->checkSelfPermission(Ljava/lang/String;)I

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

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveToFront()V
    .locals 3

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getTaskId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/16 v5, 0x400

    const/16 v4, 0x1000

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->updatePopupPermission()V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onLanguageChanged()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateFontScale()V

    :cond_5
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onConfigurationColorPickerChanged()V

    :cond_7
    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->reCreateDialogScreenResolution()V

    :cond_8
    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isBitMaskEnabled(II)Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v2, v3, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onConfigurationChanged()V

    :cond_a
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_b
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkValueDimeninMultiwindows(Landroid/app/Activity;)F

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x400

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    const-string v1, "android:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkCameraPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "attach_sheet"

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "android:fragments"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v1, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    :cond_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0206aa

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mAppIcon:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mAppIcon:Landroid/graphics/Bitmap;

    const-string v3, "#676767"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "CollageEditor onCreate"

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getBixbyApi()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v1, :cond_3

    const-string v1, "PhotoEditor"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    :cond_3
    const-string v1, "PEDIT_MultiGridActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "desktopmode"

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->setRequestedOrientation(I)V

    :goto_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$4;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_4
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v1

    if-eqz v1, :cond_5

    sput-boolean v7, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->ENABLE_DL_FEATURE:Z

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8, v8}, Landroid/view/Window;->setFlags(II)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_b

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->lauchPermissionDialogue()V

    :goto_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowExternalMemory(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->finish()V

    :cond_7
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->onCreateInit()V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "call_from_executor"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CollageEditor stateId = CollageEditor, sendResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_9
    return-void

    :cond_a
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_b
    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    goto :goto_1
.end method

.method public onCreateInit()V
    .locals 4

    sput-object p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mInstance:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkValueDimeninMultiwindows(Landroid/app/Activity;)F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->ConfigureSALog(Landroid/app/Application;)V

    const v2, 0x7f030054

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-direct {v2, v3, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-direct {v2, v3, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageManager(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initUI()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->initForDesktopMode()V

    const v2, 0x7f0e0186

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mGLLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mGLLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->registerPrintReceiver()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->registerChangePlayerReceiver()V

    invoke-direct {p0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->registerPrivateModeReceiver(Landroid/content/Context;)V

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertScreenViewSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setMenu(Landroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mInstance:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->destroy()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->unregisterPrintReceiver()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->unregisterChangePlayerReceiver()V

    invoke-direct {p0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->unregisterPrivateModeReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mAppIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mAppIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mAppIcon:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onKeyDown(ILandroid/view/KeyEvent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onKeyUp(ILandroid/view/KeyEvent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onClick(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

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
    if-eqz v1, :cond_3

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->onCreateInit()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->menu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->menu:Landroid/view/Menu;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setMenu(Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_5

    array-length v2, p3

    if-le v2, v0, :cond_4

    aget v2, p3, v0

    if-nez v2, :cond_4

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    if-nez v1, :cond_6

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->finish()V

    :cond_6
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    goto :goto_0

    nop

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
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowExternalMemory(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isStorePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->onCreateInit()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->menu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setMenu(Landroid/view/Menu;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->permissionGranted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidgetPaused:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidgetPaused:Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onResume()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->isShowAttach:Z

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

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidgetPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidgetPaused:Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidget:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageWidgetPaused:Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public requestNlgWithoutParameters(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CollageSave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->pathRuleId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->pathRuleId:Ljava/lang/String;

    const-string v1, "PhotoEditor_23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollageEditor NLG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->pathRuleId:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollageEditor stateId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

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

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    return-void
.end method

.method public sendExecutorResponseWithNLG(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollageEditor NLG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

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

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollageEditor stateId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

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

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;

    return-void
.end method

.method public showChangePlayerDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mCollageManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mChangePlayerDialog:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->show()V

    :cond_1
    return-void
.end method

.method public updatePopupPermission()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->displayCustomDialogue()V

    :cond_0
    return-void
.end method
