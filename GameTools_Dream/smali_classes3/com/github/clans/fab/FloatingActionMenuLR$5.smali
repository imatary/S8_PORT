.class Lcom/github/clans/fab/FloatingActionMenuLR$5;
.super Ljava/lang/Object;
.source "FloatingActionMenuLR.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenuLR;->l()V
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

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$5;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$5;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$5;->a:Lcom/github/clans/fab/FloatingActionMenuLR;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->b(Lcom/github/clans/fab/FloatingActionMenuLR;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->a(Z)V

    return-void
.end method
