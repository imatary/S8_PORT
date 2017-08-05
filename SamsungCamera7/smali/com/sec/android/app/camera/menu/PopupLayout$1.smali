.class Lcom/sec/android/app/camera/menu/PopupLayout$1;
.super Ljava/lang/Object;
.source "PopupLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/PopupLayout;->hideReview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/PopupLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/PopupLayout$1;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout$1;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout$1;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->hideReview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout$1;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$102(Lcom/sec/android/app/camera/menu/PopupLayout;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
