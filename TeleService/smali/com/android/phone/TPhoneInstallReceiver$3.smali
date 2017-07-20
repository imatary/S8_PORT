.class Lcom/android/phone/TPhoneInstallReceiver$3;
.super Ljava/lang/Object;
.source "TPhoneInstallReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TPhoneInstallReceiver;->InstallTPhoneInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneInstallReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneInstallReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneInstallReceiver$3;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "[tphone] TPhoneInstallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start InstallTPhoneInternal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/TPhoneInstallReceiver$3;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v5}, Lcom/android/phone/TPhoneInstallReceiver;->-get2(Lcom/android/phone/TPhoneInstallReceiver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "com.skt.prod.phone"

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/TPhoneInstallReceiver$3;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v3}, Lcom/android/phone/TPhoneInstallReceiver;->-get0(Lcom/android/phone/TPhoneInstallReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.skt.prod.phone"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v4, "Replacing package : com.skt.prod.phone"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/TPhoneInstallReceiver$3;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    const/16 v4, 0x12d

    invoke-static {v3, v4}, Lcom/android/phone/TPhoneInstallReceiver;->-set0(Lcom/android/phone/TPhoneInstallReceiver;I)I

    iget-object v3, p0, Lcom/android/phone/TPhoneInstallReceiver$3;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    iget-object v4, p0, Lcom/android/phone/TPhoneInstallReceiver$3;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v4}, Lcom/android/phone/TPhoneInstallReceiver;->-get2(Lcom/android/phone/TPhoneInstallReceiver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/TPhoneInstallReceiver;->execute(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v4, "New Install package : com.skt.prod.phone"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
