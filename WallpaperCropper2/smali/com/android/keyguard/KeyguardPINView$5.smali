.class Lcom/android/keyguard/KeyguardPINView$5;
.super Landroid/database/ContentObserver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$5;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$5;->this$0:Lcom/android/keyguard/KeyguardPINView;

    # invokes: Lcom/android/keyguard/KeyguardPINView;->setOnehandPINView()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPINView;->access$500(Lcom/android/keyguard/KeyguardPINView;)V

    return-void
.end method
