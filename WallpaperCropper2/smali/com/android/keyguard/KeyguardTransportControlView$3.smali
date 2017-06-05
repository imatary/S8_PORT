.class Lcom/android/keyguard/KeyguardTransportControlView$3;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$700(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$800(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$900(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eq p1, v0, :cond_2

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_3

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x58

    goto :goto_0

    :cond_1
    const/16 v0, 0x57

    goto :goto_0

    :cond_2
    const/16 v0, 0x55

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # invokes: Lcom/android/keyguard/KeyguardTransportControlView;->sendMediaButtonClick(I)V
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1000(Lcom/android/keyguard/KeyguardTransportControlView;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    goto :goto_1
.end method
