.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;->this$1:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
