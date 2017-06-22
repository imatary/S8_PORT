.class public Lcom/sec/android/app/camera/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/RequestPermissionActivity$PermissionListAdapter;
    }
.end annotation


# static fields
.field protected static final REQUEST_PERMISSION_CAMERA:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "RequestPermission"


# instance fields
.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverMode:Z

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mLocationDialogId:I

.field private mPreviousActivityIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/RequestPermissionActivity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/RequestPermissionActivity;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    return-void
.end method

.method private checkAllPermissionsAreGranted()V
    .locals 13

    const v12, 0x7f090111

    const/4 v6, 0x0

    const/4 v11, 0x1

    const-string v5, "RequestPermission"

    const-string v7, "checkAllPermissionsAreGranted"

    invoke-static {v5, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v3, v7, v5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "RequestPermission"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAllPermissionsAreGranted : denied permissions = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverMode:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09015a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v11, :cond_4

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090159

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090158

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v6

    aput-object v2, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v11, :cond_6

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090204

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/util/PermissionUtils;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/RequestPermissionActivity;->needToShowPermissionRationaleDialog([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090203

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-direct {p0, v5, v4}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->setPermissionRequested(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5, v11}, Lcom/sec/android/app/camera/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method private checkLocationPermissionGranted()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "RequestPermission"

    const-string v4, "checkLocationPermissionGranted"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/util/PermissionUtils;->getLocationPermission()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/PermissionUtils;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/PermissionUtils;->getLocationPermission()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->needToShowPermissionRationaleDialog([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090212

    new-array v2, v2, [Ljava/lang/Object;

    const v5, 0x7f0900d4

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_LOCATION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/PermissionUtils;->setPermissionRequested(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/PermissionUtils;->getLocationPermission()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mLocationDialogId:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method private initCoverCamera()V
    .locals 3

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v1, Lcom/sec/android/app/camera/RequestPermissionActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/RequestPermissionActivity$1;-><init>(Lcom/sec/android/app/camera/RequestPermissionActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RequestPermission"

    const-string v2, "onCreate calling setCoverMode"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverMode:Z

    :cond_0
    return-void
.end method

.method private needToShowPermissionRationaleDialog([Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const-string v4, ""

    invoke-static {p1, v4, p2}, Lcom/sec/android/app/camera/CameraDialog;->newInstance(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/camera/CameraDialog;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v4, "RequestPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCameraDialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string v4, "RequestPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult requestCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v4

    if-ne p1, v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_2

    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v5, 0x2010000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/RequestPermissionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string v4, "RequestPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish requestPermissionActivity, checkUriPermissionIntent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->overridePendingTransition(II)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "RequestPermission"

    const-string v5, "Activity is not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->RUNTIME_PERMISSIONS_LOCATION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v4

    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "location_dialog_id"

    iget v5, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mLocationDialogId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, -0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "RequestPermission"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f04001a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setContentView(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->initCoverCamera()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverMode:Z

    if-eqz v2, :cond_2

    :cond_1
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "previous_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    const-string v2, "previous_window_flag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->checkAllPermissionsAreGranted()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v2, "location_dialog_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mLocationDialogId:I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->checkLocationPermissionGranted()Z

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_SVIEW_COVER_CAMERA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "RequestPermission"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRequestPermissionsResult : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_CHINA_FIRST_LAUNCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_LAUNCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_CHINA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->TAG_SHOT_ENABLE_LOCATION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-eq p1, v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->WATERMARK_NETWORK_PERMISSION_DLG:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    if-ne p1, v6, :cond_1

    :cond_0
    array-length v6, p3

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "location_dialog_id"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    aget v6, p3, v5

    if-nez v6, :cond_7

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const/4 v2, 0x0

    :goto_2
    array-length v6, p2

    if-ge v2, v6, :cond_4

    aget v6, p3, v2

    if-ne v6, v9, :cond_2

    aget-object v6, p2, v2

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "pref_global_setup_gps_key"

    invoke-static {v5}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-string v4, "RequestPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "At least one permission denied, can\'t continue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x3

    if-eqz v6, :cond_6

    move v0, v4

    :goto_3
    if-nez v0, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v7, 0x2010000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/RequestPermissionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_4
    const-string v6, "RequestPermission"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish requestPermissionActivity, checkUriPermissionIntent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    invoke-virtual {p0, v5, v5}, Lcom/sec/android/app/camera/RequestPermissionActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_6
    move v0, v5

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v6, "RequestPermission"

    const-string v7, "onRequestPermissionsResult - Activity not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v3, "RequestPermission"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v4, 0x2010000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/RequestPermissionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string v3, "RequestPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish requestPermissionActivity, checkUriPermissionIntent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/RequestPermissionActivity;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/RequestPermissionActivity;->overridePendingTransition(II)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "RequestPermission"

    const-string v4, "Activity is not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
