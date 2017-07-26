.class Lcom/github/clans/fab/FloatingActionMenuLR$10;
.super Ljava/lang/Object;
.source "FloatingActionMenuLR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenuLR;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/github/clans/fab/FloatingActionMenuLR;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenuLR;Z)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$10;->b:Lcom/github/clans/fab/FloatingActionMenuLR;

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenuLR$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$10;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$10;->b:Lcom/github/clans/fab/FloatingActionMenuLR;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$10;->b:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->d(Lcom/github/clans/fab/FloatingActionMenuLR;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$10;->b:Lcom/github/clans/fab/FloatingActionMenuLR;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->setVisibility(I)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$10;->b:Lcom/github/clans/fab/FloatingActionMenuLR;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->b(Lcom/github/clans/fab/FloatingActionMenuLR;Z)Z

    return-void
.end method
