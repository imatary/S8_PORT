.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4$1;
.super Ljava/lang/Object;
.source "ToolkitSatelite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateBackgroundDim(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Z)V

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$10;->$SwitchMap$com$samsung$android$game$gametools$floatingui$toolkit$ToolkitSatelite$BUTTON_SIZE:[I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$900(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateShow6ButtonAnimation()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
