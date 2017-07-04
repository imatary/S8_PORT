.class Lcom/sec/android/gallery3d/service/QuickViewService$1$1;
.super Ljava/lang/Object;
.source "QuickViewService.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/service/QuickViewService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/service/QuickViewService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$1;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "MSG_SHOW_VIEW_WITH_ANIMATION onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$1;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1002(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "MSG_SHOW_VIEW_WITH_ANIMATION onAnimation End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$1;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1002(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "MSG_SHOW_VIEW_WITH_ANIMATION onAnimation Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$1;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1002(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    return-void
.end method
