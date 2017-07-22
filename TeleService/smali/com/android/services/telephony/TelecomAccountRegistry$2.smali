.class Lcom/android/services/telephony/TelecomAccountRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "User changed, re-registering phone accounts."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v2, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    iget-object v3, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-static {v3}, Lcom/android/services/telephony/TelecomAccountRegistry;->-get2(Lcom/android/services/telephony/TelecomAccountRegistry;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/services/telephony/TelecomAccountRegistry;->-set0(Lcom/android/services/telephony/TelecomAccountRegistry;Z)Z

    return-void
.end method
