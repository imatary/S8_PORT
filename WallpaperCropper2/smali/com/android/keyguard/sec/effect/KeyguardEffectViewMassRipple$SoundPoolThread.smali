.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;
.super Ljava/lang/Thread;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolThread"
.end annotation


# instance fields
.field private streamID:I

.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->streamID:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundNum:I
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I

    move-result v2

    int-to-float v2, v2

    div-float v4, v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Landroid/media/SoundPool;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundNum:I
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I

    move-result v5

    if-lt v0, v5, :cond_2

    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v4

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_3

    move v1, v3

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Landroid/media/SoundPool;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Landroid/media/SoundPool;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->streamID:I

    invoke-virtual {v5, v6, v2, v1}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundTime:I
    invoke-static {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sub-float/2addr v2, v4

    sub-float/2addr v1, v4

    goto :goto_1

    :cond_4
    return-void
.end method
