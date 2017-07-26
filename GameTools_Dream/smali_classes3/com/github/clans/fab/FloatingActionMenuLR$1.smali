.class Lcom/github/clans/fab/FloatingActionMenuLR$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingActionMenuLR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionMenuLR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/clans/fab/FloatingActionMenuLR;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenuLR;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$1;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$1;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->a(Lcom/github/clans/fab/FloatingActionMenuLR;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$1;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$1;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$1;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->b(Lcom/github/clans/fab/FloatingActionMenuLR;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Z)V

    const/4 v0, 0x1

    return v0
.end method
