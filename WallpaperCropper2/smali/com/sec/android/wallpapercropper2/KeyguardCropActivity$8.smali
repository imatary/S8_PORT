.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$8;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->changeDualPreviewWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$8;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$8;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initialize()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$8;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsTouchDisable:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$8;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-wrap4(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
