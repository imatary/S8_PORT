.class Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockDualView;->addTextChangedListenerForClockTimeMargin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$800(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$900(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDualClockSize(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$800(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v2

    if-nez v2, :cond_0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$800(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockDualView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockDualView;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->access$800(Lcom/android/keyguard/sec/SecKeyguardClockDualView;)Lcom/android/keyguard/sec/SecKeyguardTextClock;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    return-void

    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
