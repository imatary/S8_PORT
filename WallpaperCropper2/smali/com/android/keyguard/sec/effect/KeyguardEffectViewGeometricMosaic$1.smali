.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mMsg:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mMsg:Landroid/os/Message;

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
