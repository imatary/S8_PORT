.class Lcom/android/keyguard/sec/KeyguardRecoveryView$3;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardRecoveryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardRecoveryView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$3;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$3;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    # getter for: Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->access$300(Lcom/android/keyguard/sec/KeyguardRecoveryView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$3;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method
