.class final Lcom/android/services/telephony/advanced911/laaser/LaaserManager$10;
.super Ljava/lang/Thread;
.source "LaaserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->updateLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string/jumbo v2, "LaaserManager"

    const-string/jumbo v3, "Reporting location"

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->reportTelemetry(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getSuccess()Z

    move-result v0

    :cond_0
    const-string/jumbo v2, "LaaserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLocation(), result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Reporting:Z

    return-void
.end method
