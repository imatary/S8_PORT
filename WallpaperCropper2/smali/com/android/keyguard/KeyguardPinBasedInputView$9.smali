.class Lcom/android/keyguard/KeyguardPinBasedInputView$9;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPinBasedInputView;->chooseKeyboardType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$9;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$9;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$9;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$000(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$9;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$000(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$9;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$9;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
