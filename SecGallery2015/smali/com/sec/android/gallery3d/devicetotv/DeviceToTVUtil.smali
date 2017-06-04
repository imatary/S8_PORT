.class public Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;
.super Ljava/lang/Object;
.source "DeviceToTVUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;
    }
.end annotation


# static fields
.field private static final ACTION_MOBILE_TO_TV_CANCEL_TV_ON_DLG:Ljava/lang/String; = "com.sec.android.m2tv.TV_CANCEL_TV_ON_DLG"

.field private static final ACTION_MOBILE_TO_TV_DETACHED:Ljava/lang/String; = "com.sec.android.m2tv.TV_DETACHED"

.field private static final ACTION_MOBILE_TO_TV_DETECTED:Ljava/lang/String; = "com.sec.android.m2tv.TV_DETECTED"

.field private static final ACTION_MOBILE_TO_TV_LIST:Ljava/lang/String; = "com.sec.android.m2tv.TV_LIST"

.field private static final ACTION_MOBILE_TO_TV_NAME:Ljava/lang/String; = "com.sec.android.m2tv.TV_NAME"

.field private static final ACTION_MOBILE_TO_TV_REQUEST_DISCONNECT:Ljava/lang/String; = "com.sec.android.m2tv.TV_REQUEST_DISCONNECT"

.field private static final ACTION_MOBILE_TO_TV_SELECTED:Ljava/lang/String; = "com.sec.android.m2tv.TV_SELECTED"

.field private static final ACTION_MOBILE_TO_TV_SHOW_TV_ON_DLG:Ljava/lang/String; = "com.sec.android.m2tv.TV_SHOW_TV_ON_DLG"

.field private static final EXTRA_IS_MULTIWINDOW:Ljava/lang/String; = "isMultiWindow"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "extra_package"

.field private static final EXTRA_POPUP_REQUEST:Ljava/lang/String; = "popup_request"

.field private static final EXTRA_REGISTERED:Ljava/lang/String; = "registered"

.field private static final EXTRA_TV_LIST:Ljava/lang/String; = "tv_list"

.field private static final EXTRA_TV_NAME:Ljava/lang/String; = "tv_name"

.field private static final FeatureUseDeviceToTV:Z

.field private static final GALLERY_PACKAGE:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final MOBILE_TO_TV_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.withtv"

.field private static final MOBILE_TO_TV_PACKAGE_SERVICE:Ljava/lang/String; = "com.samsung.android.app.withtv.m2tvconnect.OMXCheckService"

.field private static final TAG:Ljava/lang/String; = "DeviceToTVUtil"

.field private static mShowDeviceToTvDisconnectIcon:Z

.field private static mShowDeviceToTvIcon:Z


# instance fields
.field private mDetectedFlag:Z

.field private final mDeviceToTVReceiver:Landroid/content/BroadcastReceiver;

.field private mIsRegisteredDeviceToTVReceiver:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mListener:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;

.field private mSelectTvPopup:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

.field private mTop:Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

.field private mTvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceToTV:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->FeatureUseDeviceToTV:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mIsRegisteredDeviceToTVReceiver:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$1;-><init>(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDeviceToTVReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    iput-object p2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mListener:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTop:Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTop:Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->FeatureUseDeviceToTV:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTVUtil(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTop:Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTVList()V

    return-void
.end method

.method public static isShowDeviceToTvDisconnectIcon()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mShowDeviceToTvDisconnectIcon:Z

    return v0
.end method

.method public static isShowDeviceToTvIcon()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mShowDeviceToTvIcon:Z

    return v0
.end method

.method private isWifiDisplayConnected()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseWfd:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isWifiDisplayConnected()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private showDeviceToTVList()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "DeviceToTVUtil"

    const-string/jumbo v3, "showDeviceToTVList: TV is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v2}, Lcom/samsung/android/library/beaconmanager/Tv;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->selectDeviceToTV(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mSelectTvPopup:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    if-nez v2, :cond_4

    new-instance v2, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v2, v3, p0}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mSelectTvPopup:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mSelectTvPopup:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->setTvList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mSelectTvPopup:Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/devicetotv/SelectTvPopup;->createSelectTvPopup()V

    goto :goto_0
.end method

.method private showDeviceToTVUtil(ZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDetectedFlag:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mListener:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mListener:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;->getShowBarState()Z

    move-result v0

    :cond_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->isWifiDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvIcon(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvDisconnectIcon(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvIcon(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvDisconnectIcon(Z)V

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDetectedFlag:Z

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvIcon(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvDisconnectIcon(Z)V

    goto :goto_0
.end method

.method private showDeviceToTvDisconnectIcon(Z)V
    .locals 1

    sput-boolean p1, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mShowDeviceToTvDisconnectIcon:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mListener:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;->showDeviceToTvDisconnectIcon()V

    return-void
.end method

.method private showDeviceToTvIcon(Z)V
    .locals 1

    sput-boolean p1, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mShowDeviceToTvIcon:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mListener:Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;->showDeviceToTvIcon()V

    return-void
.end method

.method private startBleService()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.withtv"

    const-string/jumbo v3, "com.samsung.android.app.withtv.m2tvconnect.OMXCheckService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string/jumbo v2, "DeviceToTVUtil"

    const-string/jumbo v3, "startBleService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DeviceToTVUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SecurityException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopBleService()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.withtv"

    const-string/jumbo v3, "com.samsung.android.app.withtv.m2tvconnect.OMXCheckService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DeviceToTVUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SecurityException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public connectDeviceToTV()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->insertMobileToTVLog()V

    const-string/jumbo v1, "DeviceToTVUtil"

    const-string/jumbo v2, "start connectDeviceToTV"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.m2tv.TV_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "popup_request"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "extra_package"

    const-string/jumbo v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvIcon(Z)V

    return-void
.end method

.method public disconnectDeviceToTV()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "DeviceToTVUtil"

    const-string/jumbo v2, "start disconnectDeviceToTV"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.m2tv.TV_REQUEST_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDetectedFlag:Z

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvIcon(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvDisconnectIcon(Z)V

    return-void
.end method

.method public registerDeviceToTVReceiver()V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mIsRegisteredDeviceToTVReceiver:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->startBleService()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.m2tv.TV_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.m2tv.TV_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.m2tv.TV_SHOW_TV_ON_DLG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.m2tv.TV_CANCEL_TV_ON_DLG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.m2tv.TV_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDeviceToTVReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mIsRegisteredDeviceToTVReceiver:Z

    goto :goto_0
.end method

.method public selectDeviceToTV(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "DeviceToTVUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " selectDeviceToTV: name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.m2tv.TV_NAME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "tv_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getMultiwindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    const-string/jumbo v2, "isMultiWindow"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showDeviceToTVUtil(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "DeviceToTVUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mDetectedFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDetectedFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDetectedFlag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->isWifiDisplayConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvIcon(Z)V

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvDisconnectIcon(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvIcon(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvDisconnectIcon(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvIcon(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->showDeviceToTvDisconnectIcon(Z)V

    goto :goto_0
.end method

.method public unregisterDeviceToTVReceiver()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mIsRegisteredDeviceToTVReceiver:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->stopBleService()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDeviceToTVReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDeviceToTVReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mIsRegisteredDeviceToTVReceiver:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mDetectedFlag:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput-boolean v2, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mShowDeviceToTvDisconnectIcon:Z

    sput-boolean v2, Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;->mShowDeviceToTvIcon:Z

    goto :goto_0
.end method
