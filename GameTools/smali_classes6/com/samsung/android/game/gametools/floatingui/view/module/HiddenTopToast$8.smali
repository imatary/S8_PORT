.class Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$8;
.super Ljava/lang/Object;
.source "HiddenTopToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->initAnims()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mIsShown:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->access$602(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$8;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->removeViewFromWindow()V

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
