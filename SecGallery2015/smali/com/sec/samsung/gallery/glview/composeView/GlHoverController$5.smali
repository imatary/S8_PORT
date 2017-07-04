.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;
.super Ljava/lang/Object;
.source "GlHoverController.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->initActionBarListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "GSPH"

    const-string/jumbo v3, "Screen write"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "FLASH_ANNOTATE"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1702(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    return v5
.end method
