.class Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;
.super Ljava/lang/Object;
.source "Clusterkraf.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->onLoadingComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$2400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$2400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$2400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$2400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->val$ani:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->val$ani:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    :cond_0
    return-void
.end method
