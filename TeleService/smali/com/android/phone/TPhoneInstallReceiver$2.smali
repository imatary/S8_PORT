.class Lcom/android/phone/TPhoneInstallReceiver$2;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "TPhoneInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneInstallReceiver;
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

    iput-object p1, p0, Lcom/android/phone/TPhoneInstallReceiver$2;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 3

    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v1, "SessionCallback : onActiveChanged "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 3

    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v1, "SessionCallback : onBadgingChanged "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreated(I)V
    .locals 3

    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v1, "SessionCallback : onCreated "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFinished(IZ)V
    .locals 3

    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v1, "SessionCallback : onFinished "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneInstallReceiver$2;->this$0:Lcom/android/phone/TPhoneInstallReceiver;

    invoke-static {v0, p1, p2}, Lcom/android/phone/TPhoneInstallReceiver;->-wrap2(Lcom/android/phone/TPhoneInstallReceiver;IZ)V

    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 3

    const-string/jumbo v0, "[tphone] TPhoneInstallReceiver"

    const-string/jumbo v1, "SessionCallback : onProgressChanged "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
