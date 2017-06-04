.class public Lcom/sec/android/gallery3d/eventshare/receiver/EmEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmEventReceiver.java"


# static fields
.field private static final EMERGENCY_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

.field private static final MODE_DISABLED:I = 0x5

.field private static final MODE_ENABLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EmEventReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "EmEventReceiver"

    const-string/jumbo v3, "onReceive EMERGENCY_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "reason"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "EmEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "EmEventReceiver"

    const-string/jumbo v3, "MODE_ENABLING service off"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOffForUPSM()V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "sharing_service_off_for_upsm"

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string/jumbo v2, "sharing_service_off_for_upsm"

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "EmEventReceiver"

    const-string/jumbo v3, "MODE_DISABLED service on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOnForUPSM()V

    goto :goto_0
.end method
