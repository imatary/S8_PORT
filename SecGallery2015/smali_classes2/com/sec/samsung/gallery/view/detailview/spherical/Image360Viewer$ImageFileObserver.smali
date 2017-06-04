.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;
.super Landroid/os/FileObserver;
.source "Image360Viewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const/16 v0, 0x600

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Ljava/lang/String;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_0

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ImageFileObserver;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->finish()V

    :cond_1
    return-void
.end method
