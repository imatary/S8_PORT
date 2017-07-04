.class Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;
.super Landroid/app/Presentation;
.source "DetailViewPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayPresentation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;

    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;Landroid/content/Context;Landroid/view/Display;Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;)Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v2, 0x7f040057

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->setContentView(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;

    const v2, 0x7f1200d6

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v2, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mGLSurfaceView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation;->mGLSurfaceView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setType(I)V

    const-string/jumbo v2, "DetailViewPresentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DisplayPresentation: onCreate end. displayId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewPresentation$DisplayPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
