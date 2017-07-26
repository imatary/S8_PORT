.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;
.super Ljava/lang/Object;
.source "ToolkitTopMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
