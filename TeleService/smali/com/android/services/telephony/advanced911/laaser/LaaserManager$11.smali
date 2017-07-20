.class final Lcom/android/services/telephony/advanced911/laaser/LaaserManager$11;
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
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Reporting location SMS"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->reportTelemetrySms(Landroid/content/Context;Z)V

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Reporting:Z

    return-void
.end method
