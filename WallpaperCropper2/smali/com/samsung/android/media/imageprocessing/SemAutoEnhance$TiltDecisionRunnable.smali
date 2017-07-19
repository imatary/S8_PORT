.class Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiltDecisionRunnable"
.end annotation


# instance fields
.field AEDecision:I

.field AEHandle:J

.field isThreadComplete:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;->AEDecision:I

    iput-wide p1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;->AEHandle:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "APP - AutoEnhanceTiltEstimation S"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;->AEHandle:J

    invoke-static {v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceTiltEstimation(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;->AEDecision:I

    const-string/jumbo v0, "SemAutoEnhance"

    const-string/jumbo v1, "APP - AutoEnhanceTiltEstimation E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;->isThreadComplete:Z

    return-void
.end method
