.class Lcom/android/phone/EmergencyDialer$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->updateOneHandSideAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$10;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$10;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-wrap7(Lcom/android/phone/EmergencyDialer;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$10;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-boolean v0, v0, Lcom/android/phone/EmergencyDialer;->mIsOnehandOptionRightForAni:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$10;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get5(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$10;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get5(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$10;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get6(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$10;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get6(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
