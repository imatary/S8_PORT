.class Landroid/support/design/widget/FloatingActionButton$Behavior$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;->animateOut(Landroid/support/design/widget/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButton$Behavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButton$Behavior;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior$1;->this$0:Landroid/support/design/widget/FloatingActionButton$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior$1;->this$0:Landroid/support/design/widget/FloatingActionButton$Behavior;

    const/4 v1, 0x0

    # setter for: Landroid/support/design/widget/FloatingActionButton$Behavior;->mIsAnimatingOut:Z
    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButton$Behavior;->access$302(Landroid/support/design/widget/FloatingActionButton$Behavior;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior$1;->this$0:Landroid/support/design/widget/FloatingActionButton$Behavior;

    const/4 v1, 0x0

    # setter for: Landroid/support/design/widget/FloatingActionButton$Behavior;->mIsAnimatingOut:Z
    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButton$Behavior;->access$302(Landroid/support/design/widget/FloatingActionButton$Behavior;Z)Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior$1;->this$0:Landroid/support/design/widget/FloatingActionButton$Behavior;

    const/4 v1, 0x1

    # setter for: Landroid/support/design/widget/FloatingActionButton$Behavior;->mIsAnimatingOut:Z
    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButton$Behavior;->access$302(Landroid/support/design/widget/FloatingActionButton$Behavior;Z)Z

    return-void
.end method
