.class Lcom/naver/glink/android/sdk/ui/floating/a$3;
.super Ljava/lang/Object;
.source "FullWidgetDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/a;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/github/clans/fab/AbsFloatingActionMenu;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/floating/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/view/View;Lcom/github/clans/fab/AbsFloatingActionMenu;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->d:Lcom/naver/glink/android/sdk/ui/floating/a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->b:Lcom/github/clans/fab/AbsFloatingActionMenu;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->b:Lcom/github/clans/fab/AbsFloatingActionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/AbsFloatingActionMenu;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->d:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->a(Lcom/naver/glink/android/sdk/ui/floating/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/a$3$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/floating/a$3$1;-><init>(Lcom/naver/glink/android/sdk/ui/floating/a$3;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
