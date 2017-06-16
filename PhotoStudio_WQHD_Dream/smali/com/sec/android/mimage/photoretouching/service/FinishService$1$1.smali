.class Lcom/sec/android/mimage/photoretouching/service/FinishService$1$1;
.super Ljava/lang/Object;
.source "FinishService.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/service/FinishService$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/service/FinishService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/service/FinishService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "PEDIT_FinishService"

    const-string v1, "MSG_SHOW_VIEW_WITH_ANIMATION onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/service/FinishService$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsShowAnimationState:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1002(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "PEDIT_FinishService"

    const-string v1, "MSG_SHOW_VIEW_WITH_ANIMATION onAnimation End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/service/FinishService$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsShowAnimationState:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1002(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "PEDIT_FinishService"

    const-string v1, "MSG_SHOW_VIEW_WITH_ANIMATION onAnimation Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/service/FinishService$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mIsShowAnimationState:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1002(Lcom/sec/android/mimage/photoretouching/service/FinishService;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/service/FinishService$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/service/FinishService$1;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # invokes: Lcom/sec/android/mimage/photoretouching/service/FinishService;->requestFinishActivity()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$800(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V

    return-void
.end method
