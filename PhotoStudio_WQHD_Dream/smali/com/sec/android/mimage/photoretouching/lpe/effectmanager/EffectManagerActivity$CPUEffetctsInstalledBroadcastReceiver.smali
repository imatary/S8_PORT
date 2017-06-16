.class Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EffectManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUEffetctsInstalledBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:com.sec.android.mimage.photoretouching.downloadCPUfilters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->updateCPUEffects(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity$CPUEffetctsInstalledBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->reload()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/effectmanager/EffectManagerActivity;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->updateCPUEffects(Z)V

    goto :goto_0
.end method
