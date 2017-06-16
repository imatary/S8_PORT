.class Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2$1;
.super Ljava/lang/Object;
.source "GLAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mAnimStarted:Z

    return-void
.end method
