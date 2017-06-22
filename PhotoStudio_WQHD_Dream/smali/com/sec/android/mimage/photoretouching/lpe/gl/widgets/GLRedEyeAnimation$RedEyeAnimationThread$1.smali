.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread$1;
.super Ljava/lang/Object;
.source "GLRedEyeAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->mAnimTexture:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLRedEyeAnimation$RedEyeAnimationThread;)I

    move-result v1

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
