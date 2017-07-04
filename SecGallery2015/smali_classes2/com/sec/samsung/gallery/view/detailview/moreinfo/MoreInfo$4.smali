.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$4;
.super Ljava/lang/Object;
.source "MoreInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$1200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;->setTitleTextColor(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$1300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    return-void
.end method
