.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2;
.super Ljava/lang/Object;
.source "GLMainButtonLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLMainButtonLayout$2;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
