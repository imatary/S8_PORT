.class Lcom/github/clans/fab/FloatingActionMenuLR$2;
.super Ljava/lang/Object;
.source "FloatingActionMenuLR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenuLR;->h(Z)V
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

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$2;->b:Lcom/github/clans/fab/FloatingActionMenuLR;

    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionMenuLR$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR$2;->b:Lcom/github/clans/fab/FloatingActionMenuLR;

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR$2;->a:Z

    invoke-static {v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Lcom/github/clans/fab/FloatingActionMenuLR;Z)V

    return-void
.end method
