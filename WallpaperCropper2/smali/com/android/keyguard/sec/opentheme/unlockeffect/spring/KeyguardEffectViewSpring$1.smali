.class Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;

    # getter for: Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->access$000(Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;

    # setter for: Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->access$102(Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;

    # getter for: Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->access$000(Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring$1;->this$0:Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;

    # setter for: Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;->access$002(Lcom/android/keyguard/sec/opentheme/unlockeffect/spring/KeyguardEffectViewSpring;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    goto :goto_0
.end method
