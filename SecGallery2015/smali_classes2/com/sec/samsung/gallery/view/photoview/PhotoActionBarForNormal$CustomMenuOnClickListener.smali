.class Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$CustomMenuOnClickListener;
.super Ljava/lang/Object;
.source "PhotoActionBarForNormal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMenuOnClickListener"
.end annotation


# instance fields
.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$CustomMenuOnClickListener;->mMenuId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$CustomMenuOnClickListener;->mMenuId:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;->access$800(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "START_CAMERA"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;->access$700(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$CustomMenuOnClickListener;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12007c -> :sswitch_0
        0x7f120288 -> :sswitch_2
        0x7f120290 -> :sswitch_1
    .end sparse-switch
.end method
