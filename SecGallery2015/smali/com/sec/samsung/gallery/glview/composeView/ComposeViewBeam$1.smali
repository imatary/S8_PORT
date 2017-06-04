.class Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam$1;
.super Ljava/lang/Object;
.source "ComposeViewBeam.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->setBeamListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetFilePath()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "ComposeViewBeam"

    const-string/jumbo v3, "[beam performance] start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalItemList()Ljava/util/LinkedList;

    move-result-object v0

    const-string/jumbo v2, "ComposeViewBeam"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetFilePath(). Selected item count= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ComposeViewBeam"

    const-string/jumbo v3, "[beam performance] end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
