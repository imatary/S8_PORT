.class Lcom/android/keyguard/KeyguardPINView$4;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/keyguard/R$id;->onehand_left_arrow_pin:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/keyguard/R$id;->onehand_right_arrow_pin:I

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardPINView;->access$102(Lcom/android/keyguard/KeyguardPINView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPINView;->access$100(Lcom/android/keyguard/KeyguardPINView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPINView;->access$200(Lcom/android/keyguard/KeyguardPINView;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPINView;->access$300(Lcom/android/keyguard/KeyguardPINView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "onehand_direction"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardPINView;->access$102(Lcom/android/keyguard/KeyguardPINView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPINView;->access$100(Lcom/android/keyguard/KeyguardPINView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPINView;->access$200(Lcom/android/keyguard/KeyguardPINView;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPINView;->access$400(Lcom/android/keyguard/KeyguardPINView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "onehand_direction"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
