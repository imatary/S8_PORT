.class Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;
.super Ljava/lang/Object;
.source "GameToolsScreenshot.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->onAnimationCancel(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->access$300(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->access$300(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
