.class Lcom/github/clans/fab/FloatingActionMenuLR$9;
.super Ljava/lang/Object;
.source "FloatingActionMenuLR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenuLR;->c(Z)V
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

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$9;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$9;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-static {v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->a(Lcom/github/clans/fab/FloatingActionMenuLR;Z)Z

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$9;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenuLR;->k:Lcom/github/clans/fab/AbsFloatingActionMenu$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$9;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenuLR;->k:Lcom/github/clans/fab/AbsFloatingActionMenu$a;

    invoke-interface {v0, v1}, Lcom/github/clans/fab/AbsFloatingActionMenu$a;->a(Z)V

    :cond_0
    return-void
.end method
