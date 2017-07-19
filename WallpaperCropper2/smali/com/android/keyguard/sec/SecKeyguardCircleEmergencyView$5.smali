.class Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CMCC :: serviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v0

    if-ne v0, v4, :cond_6

    :cond_0
    return v3

    :cond_1
    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CMCC :: serviceState1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SecKeyguardCircleEmergencyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CMCC :: serviceState2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v0

    if-ne v0, v4, :cond_5

    :cond_3
    return v3

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v0

    if-eq v0, v5, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_7

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->checkWorkingSet(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$200(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v0

    if-eq v0, v5, :cond_3

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I

    move-result v0

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->clearFocus()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    iget-object v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
