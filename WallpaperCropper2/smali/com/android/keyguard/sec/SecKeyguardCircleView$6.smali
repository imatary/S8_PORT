.class Lcom/android/keyguard/sec/SecKeyguardCircleView$6;
.super Landroid/view/OrientationEventListener;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;->createOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x145

    if-lt p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x23

    if-gt v0, p1, :cond_0

    const/16 v0, 0x37

    if-ge p1, v0, :cond_5

    :cond_3
    const/16 v0, 0x91

    if-ge p1, v0, :cond_6

    :cond_4
    const/16 v0, 0xeb

    if-lt p1, v0, :cond_1

    const/16 v0, 0x131

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x7d

    if-le v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0xd7

    if-le v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0
.end method
