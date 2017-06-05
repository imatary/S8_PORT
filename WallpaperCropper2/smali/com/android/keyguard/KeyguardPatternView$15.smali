.class Lcom/android/keyguard/KeyguardPatternView$15;
.super Landroid/database/ContentObserver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3400(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3000(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2900(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$15;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2900(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0
.end method
