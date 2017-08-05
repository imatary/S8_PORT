.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->addTextChangedListenerForClockTimeMargin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v1, v1, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1102(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "SecKeyguardClockSingleView"

    const-string/jumbo v1, "Ignore. Because it is same clock text"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateImageViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->viewToShadow()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$900(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getClockSize(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-nez v2, :cond_2

    int-to-float v2, v1

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-nez v2, :cond_1

    int-to-float v2, v1

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_first_digit_one_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
