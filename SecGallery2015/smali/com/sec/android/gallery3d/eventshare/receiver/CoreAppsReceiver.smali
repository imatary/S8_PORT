.class public Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CoreAppsReceiver.java"


# static fields
.field private static final COREAPPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup"

.field private static final TAG:Ljava/lang/String; = "CoreAppsReceiver"


# instance fields
.field private mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private register(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver$1;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setRegisterOnListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->register(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isServiceOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver$2;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setServiceOnListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOn(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v3, "CoreAppsReceiver"

    const-string/jumbo v4, "CoreAppsReceiver onReceive"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "CoreAppsReceiver"

    const-string/jumbo v4, "CoreApps is not installed on this device."

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsSupportVersion(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "CoreAppsReceiver"

    const-string/jumbo v4, "CoreApps is not supported on this device."

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.android.coreapps.easysignup.ACTION_SDK_REQ_AUTH_RESULT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "tnc"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "CoreAppsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tnc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->register(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    if-ne v2, v6, :cond_4

    const-string/jumbo v3, "CoreAppsReceiver"

    const-string/jumbo v4, "Show TNC UI"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/eventshare/receiver/CoreAppsReceiver;->register(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v3, "CoreAppsReceiver"

    const-string/jumbo v4, "Auth fail"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
