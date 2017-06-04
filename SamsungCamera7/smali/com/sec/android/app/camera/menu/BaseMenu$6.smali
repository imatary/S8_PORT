.class Lcom/sec/android/app/camera/menu/BaseMenu$6;
.super Ljava/lang/Object;
.source "BaseMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BaseMenu;->handleOneHandZoomShowing(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$6;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$6;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getTranslateY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v2, 0x42480000    # 50.0f

    sub-float v2, v0, v2

    mul-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$6;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    return-void

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0
.end method
