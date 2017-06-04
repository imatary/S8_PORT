.class public abstract Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;
.super Landroid/app/Activity;
.source "AbstractMoreInfoLocationActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$GeocoderTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAT:D = 0.0

.field private static final DEFAULT_LOG:D = 0.0

.field private static final LAST_LATITUDE:Ljava/lang/String; = "LAST_LATITUDE"

.field private static final LAST_LONGITUDE:Ljava/lang/String; = "LAST_LONGITUDE"

.field private static final LOCATION_MODE_OFF:I = 0x0

.field static LOCATION_NAME_RESULT_MAX:I = 0x0

.field private static final PERSONAL_PAGE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field private static final TAG:Ljava/lang/String; = "AbsMoreInfoLocActivity"

.field static final ZOOM_RATIO:F = 13.0f

.field private static final bFeatureIsSupportVibetonz:Z


# instance fields
.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

.field mDoneActionView:Landroid/view/View;

.field mExtra:Landroid/os/Bundle;

.field private mFindCurrentLocationButton:Landroid/widget/ImageButton;

.field mFisrtDraw:Z

.field private mGPSsettingDialog:Landroid/app/Dialog;

.field mImr:Landroid/view/inputmethod/InputMethodManager;

.field private mIsFromPrivate:Z

.field private mIsGPSsettingOn:Z

.field mLat:D

.field mLng:D

.field private mLocationMode:I

.field private mMarkerBitmap:Landroid/graphics/Bitmap;

.field private mMoreInfoEditContainer:Landroid/widget/RelativeLayout;

.field private mMoreInfoEditlayout_lp:Landroid/widget/RelativeLayout$LayoutParams;

.field mSearchView:Landroid/widget/SearchView;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field private mShowSaveMoreInfoDialog:Z

.field private final mUseDreamMapViewUI:Z

.field final mUseGraceMapViewUI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsSupportHaptic:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->bFeatureIsSupportVibetonz:Z

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->LOCATION_NAME_RESULT_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseGraceMapViewUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFisrtDraw:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mIsGPSsettingOn:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLocationMode:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mIsFromPrivate:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mShowSaveMoreInfoDialog:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$8;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->checkRequiredPermissions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mShowSaveMoreInfoDialog:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mGPSsettingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mGPSsettingDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mIsFromPrivate:Z

    return v0
.end method

.method private checkRequiredPermissions()Z
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->LOCATION_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->showPermissionRequestDialog([Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getCustomActionButtonTextSize(I)F
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010095

    aput v5, v4, v6

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    return v1
.end method

.method private registerReceiver()V
    .locals 2

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$13;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setUpLocationSetting()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLocationMode:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLocationMode:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mIsGPSsettingOn:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->showLocationSettingDialog()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AbsMoreInfoLocActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SettingNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showLocationSettingDialog()V
    .locals 6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mIsGPSsettingOn:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f0400b8

    const/4 v3, 0x0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a026a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a0080

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$9;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$9;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a03c4

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$10;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$10;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mGPSsettingDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$11;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$11;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mGPSsettingDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mGPSsettingDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mGPSsettingDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mGPSsettingDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mGPSsettingDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$12;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$12;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->dismissDialog()V

    :cond_0
    new-instance v3, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, p0, v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->showPermissionRationaleDialog()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->setPermissionRequested(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/16 v3, 0x66

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private showSaveMoreInfoDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a038a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$7;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00d8

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$6;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$6;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0386

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$5;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "AbsMoreInfoLocActivity"

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    throw v1
.end method

.method private updateLocation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method protected abstract addMarker(DDZ)V
.end method

.method protected abstract getCurrentlocationText(Ljava/lang/Double;D)Ljava/lang/String;
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "MapSearchView"

    return-object v0
.end method

.method getMarkerBitmap()Landroid/graphics/Bitmap;
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v9, 0x437a0000    # 250.0f

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseGraceMapViewUI:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0201ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    if-eqz v7, :cond_0

    const v7, 0x7f100112

    invoke-static {p0, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    return-object v7

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0201ff

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f100111

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/4 v7, 0x4

    new-array v2, v7, [F

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    aput v7, v2, v11

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    aput v7, v2, v12

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    aput v7, v2, v13

    const/4 v7, 0x3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    aput v8, v2, v7

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v7, 0x14

    new-array v7, v7, [F

    aget v8, v2, v12

    aput v8, v7, v11

    aput v10, v7, v12

    aput v10, v7, v13

    const/4 v8, 0x3

    aput v10, v7, v8

    const/4 v8, 0x4

    aput v10, v7, v8

    const/4 v8, 0x5

    aput v10, v7, v8

    const/4 v8, 0x6

    aget v9, v2, v13

    aput v9, v7, v8

    const/4 v8, 0x7

    aput v10, v7, v8

    const/16 v8, 0x8

    aput v10, v7, v8

    const/16 v8, 0x9

    aput v10, v7, v8

    const/16 v8, 0xa

    aput v10, v7, v8

    const/16 v8, 0xb

    aput v10, v7, v8

    const/16 v8, 0xc

    const/4 v9, 0x3

    aget v9, v2, v9

    aput v9, v7, v8

    const/16 v8, 0xd

    aput v10, v7, v8

    const/16 v8, 0xe

    aput v10, v7, v8

    const/16 v8, 0xf

    aput v10, v7, v8

    const/16 v8, 0x10

    aput v10, v7, v8

    const/16 v8, 0x11

    aput v10, v7, v8

    const/16 v8, 0x12

    aget v9, v2, v11

    aput v9, v7, v8

    const/16 v8, 0x13

    aput v10, v7, v8

    invoke-direct {v1, v7}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v6, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method initActionBar()V
    .locals 14

    const v10, 0x7f0c00b9

    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getCustomActionButtonTextSize(I)F

    move-result v9

    const v10, 0x7f12007f

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    if-eqz v10, :cond_0

    const v10, 0x7f100166

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    const v10, 0x7f120082

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    const v10, 0x7f0b0038

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const v10, 0x7f120078

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v10, 0x7f120079

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    if-eqz v10, :cond_1

    const v10, 0x7f0c00b8

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0a041c

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v10, 0x7f12007a

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    const v10, 0x7f120080

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    if-eqz v10, :cond_2

    const v10, 0x7f0c00b8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    const v10, 0x7f0a041c

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setNextFocusForwardId(I)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    if-eqz v10, :cond_4

    const v10, 0x7f020259

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    const v11, 0x7f020259

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->updateDoneButton(Z)V

    return-void

    :cond_3
    const v10, 0x7f0b0039

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    const v10, 0x7f020258

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    const v11, 0x7f020258

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    const v10, 0x7f020257

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    const v11, 0x7f020257

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected abstract onActionBarItemSelected(I)Z
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mShowSaveMoreInfoDialog:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->showSaveMoreInfoDialog()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x400

    const/16 v22, 0x400

    invoke-virtual/range {v20 .. v22}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->setContentView()V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    const v20, 0x7f1201d7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditContainer:Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->initActionBar()V

    const-string/jumbo v20, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_5

    const-string/jumbo v20, "LAST_LATITUDE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLat:D

    const-string/jumbo v20, "LAST_LONGITUDE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLng:D

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseGraceMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    const v20, 0x7f1201da

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/SearchView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    const v20, 0x7f1201db

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const v20, 0x7f0202f3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b03ad

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SearchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b03ae

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->setUpLocationSetting()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditlayout_lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->updateViewLayout(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseGraceMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    const v20, 0x7f1201db

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string/jumbo v21, "android:id/search_plate"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseGraceMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseDreamMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020294

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v9, v0, [[I

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x10100a7

    aput v23, v21, v22

    aput-object v21, v9, v20

    const/16 v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x101009e

    aput v23, v21, v22

    aput-object v21, v9, v20

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v9, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v8, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b01b2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string/jumbo v21, "android:id/search_close_btn"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v20, 0x7f02029c

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v5, v0, v5, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b01b6

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mUseGraceMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f100112

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f1001d5

    invoke-static/range {v20 .. v21}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v10, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    new-instance v11, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-boolean v20, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->bFeatureIsSupportVibetonz:Z

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    :cond_3
    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_4

    new-instance v20, Lcom/samsung/android/devicecog/gallery/DeviceCogLocationEditActivityListenerImpl;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DeviceCogLocationEditActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v20, Lcom/samsung/android/devicecog/gallery/viewstatehandler/MoreInfoEditLocationDCHandler;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/MoreInfoEditLocationDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string/jumbo v20, "currentImg_Lat"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLat:D

    const-string/jumbo v20, "currentImg_Log"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLng:D

    const-string/jumbo v20, "fromPrivate_Mode"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mIsFromPrivate:Z

    goto/16 :goto_0

    :cond_6
    const v20, 0x7f1201d8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/SearchView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    goto/16 :goto_1

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_8
    const v20, 0x7f1201d9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f100170

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto/16 :goto_4

    nop

    :array_0
    .array-data 4
        -0x333334
        -0x333334
    .end array-data
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMarkerBitmap:Landroid/graphics/Bitmap;

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->destroyDCTouchEventThread(Landroid/content/Context;)V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mFindCurrentLocationButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x22

    if-eq p1, v1, :cond_5

    :cond_4
    sget v1, Lcom/sec/samsung/gallery/lib/factory/KeyEventWrapper;->KEYCODE_VOICE_SEARCH:I

    if-eq p1, v1, :cond_5

    const/16 v1, 0x54

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onActionBarItemSelected(I)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "AbsMoreInfoLocActivity"

    const-string/jumbo v1, "onPause() is called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;->dismissDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationalePopup;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->unregisterReceiver()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const-string/jumbo v1, "AbsMoreInfoLocActivity"

    const-string/jumbo v2, "onRequestPermissionsResult() is called!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v1, p2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->showMyLocation()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    const-string/jumbo v0, "AbsMoreInfoLocActivity"

    const-string/jumbo v1, "onResme() is called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->registerReceiver()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string/jumbo v0, "306"

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "LAST_LATITUDE"

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLat:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v0, "LAST_LONGITUDE"

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLng:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract postExecuteGeoTask(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract requestConnect()V
.end method

.method protected abstract setContentView()V
.end method

.method protected abstract setCurrentlocation(Ljava/lang/Double;D)V
.end method

.method protected abstract setOnMapClickListener()V
.end method

.method setUpMap()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->setOnMapClickListener()V

    return-void
.end method

.method protected abstract setUpMapIfNeeded()V
.end method

.method protected abstract showMyLocation()V
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v3, "AbsMoreInfoLocActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event update ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_MAP_EDIT_LOCATION:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->updateLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateDoneButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    const v1, 0x7f120080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method updateLastLatLng(DD)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLat:D

    iput-wide p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mLng:D

    return-void
.end method

.method updateViewLayout(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditlayout_lp:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditlayout_lp:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0b0038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditlayout_lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditlayout_lp:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0b0039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mMoreInfoEditlayout_lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
