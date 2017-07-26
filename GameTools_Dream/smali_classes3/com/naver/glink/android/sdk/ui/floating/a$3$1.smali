.class Lcom/naver/glink/android/sdk/ui/floating/a$3$1;
.super Ljava/lang/Object;
.source "FullWidgetDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/a$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/a$3;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3$1;->a:Lcom/naver/glink/android/sdk/ui/floating/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a$3$1;->a:Lcom/naver/glink/android/sdk/ui/floating/a$3;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/floating/a$3;->b:Lcom/github/clans/fab/AbsFloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/AbsFloatingActionMenu;->a(Z)V

    return-void
.end method
