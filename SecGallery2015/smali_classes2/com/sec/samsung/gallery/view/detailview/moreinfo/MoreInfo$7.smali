.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$7;
.super Ljava/lang/Object;
.source "MoreInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->switchViewMode()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$1500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Z

    move-result v1

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->setLayoutParams(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$1600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Z)V

    return-void
.end method
