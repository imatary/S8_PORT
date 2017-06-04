.class public Lcom/sec/android/gallery3d/eventshare/receiver/SppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SppReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SppReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SppReceiver"

    const-string/jumbo v1, "App SppReceiver on receive"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->processReceivedPush(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method
