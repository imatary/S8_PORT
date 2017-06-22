.class Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$7;
.super Ljava/lang/Object;
.source "ImageListAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->runDeleteAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$7;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$7;->val$view:Landroid/view/View;

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

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$7;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$7;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->deletePostAnim(Landroid/view/View;)V

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
