.class final Lcom/android/services/telephony/advanced911/laaser/LaaserManager$12;
.super Ljava/lang/Thread;
.source "LaaserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->submitlogthread()V
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
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checknet()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    :cond_1
    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->submitLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
