.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;
.super Ljava/lang/Object;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;->addGLIdleListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateOptionMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$6000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$5800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$5802(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Z)Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$5900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->setBeamListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->enableResStroke(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->refreshLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;->updateOptionMenu()V

    goto :goto_0
.end method
