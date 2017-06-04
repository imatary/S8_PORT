.class Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;
.super Ljava/lang/Object;
.source "AbstractAlbumActionBarForSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->updateButton(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;

.field final synthetic val$toggleImage:Z

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;

    iput p2, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->val$visible:I

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->val$toggleImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->val$visible:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->setEnableSelectionOnActionBar(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->val$toggleImage:Z

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->setCheckboxState(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->access$000(Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;Z)V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->val$visible:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection$1;->this$0:Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AbstractAlbumActionBarForSelection;->setEnableSelectionOnActionBar(Z)V

    goto :goto_0
.end method
