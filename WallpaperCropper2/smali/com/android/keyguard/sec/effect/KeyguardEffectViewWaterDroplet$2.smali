.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->mView:Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect;->cleanUp()V

    return-void
.end method
