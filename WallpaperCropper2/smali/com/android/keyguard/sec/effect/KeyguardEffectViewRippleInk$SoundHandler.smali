.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg2:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v0, v0}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->soundMsg:Landroid/os/Message;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$SoundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
