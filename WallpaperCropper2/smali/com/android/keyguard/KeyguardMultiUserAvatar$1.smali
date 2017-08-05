.class Lcom/android/keyguard/KeyguardMultiUserAvatar$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$finalTextAlpha:I

.field final synthetic val$initAlpha:F

.field final synthetic val$initScale:F

.field final synthetic val$initTextAlpha:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFII)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iput p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    iput p3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    iput p4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    iput p5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    iput p6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initTextAlpha:I

    iput p7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalTextAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/16 v5, 0xff

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    sub-float v1, v4, v0

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    sub-float v3, v4, v0

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initTextAlpha:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalTextAlpha:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$200(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
