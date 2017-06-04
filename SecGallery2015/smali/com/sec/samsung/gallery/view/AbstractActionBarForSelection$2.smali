.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$2;
.super Ljava/lang/Object;
.source "AbstractActionBarForSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # invokes: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectionActionBarView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$000(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # getter for: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectMultiplePicker:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$100(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    # invokes: Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectionBuffer()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$200(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    :cond_0
    return-void
.end method
