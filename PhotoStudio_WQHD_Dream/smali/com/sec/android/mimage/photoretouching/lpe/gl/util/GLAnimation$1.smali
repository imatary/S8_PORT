.class Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;
.super Ljava/lang/Object;
.source "GLAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mIsAnimating:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mIsAnimating:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mIsAnimating:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mIsAnimating:Z

    return-void
.end method
