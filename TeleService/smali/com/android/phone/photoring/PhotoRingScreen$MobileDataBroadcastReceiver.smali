.class public Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoRingScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileDataBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MobileDataStateChanged state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get10(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-set7(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    const-string/jumbo v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d09d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-set10(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    goto :goto_0
.end method
