.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;->clearScreen()V

    return-void
.end method
