.class Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigLoaderBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CarrierConfigLoader;


# direct methods
.method private constructor <init>(Lcom/android/phone/CarrierConfigLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CarrierConfigLoader;Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;-><init>(Lcom/android/phone/CarrierConfigLoader;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-static {v4}, Lcom/android/phone/CarrierConfigLoader;->-get3(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-static {v5}, Lcom/android/phone/CarrierConfigLoader;->-get3(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_1
    const-string/jumbo v4, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-static {v4}, Lcom/android/phone/CarrierConfigLoader;->-get2(Lcom/android/phone/CarrierConfigLoader;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-static {v4}, Lcom/android/phone/CarrierConfigLoader;->-get3(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CarrierConfigLoader$ConfigLoaderBroadcastReceiver;->this$0:Lcom/android/phone/CarrierConfigLoader;

    invoke-static {v5}, Lcom/android/phone/CarrierConfigLoader;->-get3(Lcom/android/phone/CarrierConfigLoader;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1
.end method
