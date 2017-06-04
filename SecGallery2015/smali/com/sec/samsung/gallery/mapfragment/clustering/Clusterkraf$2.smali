.class Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$2;
.super Ljava/lang/Object;
.source "Clusterkraf.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->hideAnimationForThumbnailList(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->removeThumbnailList()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$2500(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V

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
