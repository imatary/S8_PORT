.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$2;
.super Ljava/lang/Object;
.source "ToolkitTopMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->hide(Z)V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowing:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->access$502(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;Z)Z

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
