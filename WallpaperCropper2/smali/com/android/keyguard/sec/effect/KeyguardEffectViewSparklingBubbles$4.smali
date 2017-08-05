.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    :cond_0
    const-string/jumbo v0, "SparklingBubbles_Keyguard"

    const-string/jumbo v1, "GeometricMosaic sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$4;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    goto :goto_0
.end method
