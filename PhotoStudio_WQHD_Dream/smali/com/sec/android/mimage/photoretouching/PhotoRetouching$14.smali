.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->removeHackFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

.field final synthetic val$dummyView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$400(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->val$dummyView:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14$1;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
