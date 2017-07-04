.class Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;
.super Landroid/database/ContentObserver;
.source "SLinkViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, "SLinkViewState"

    const-string/jumbo v1, "mRegisteredDevicesObserver : onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$100(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$000(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->setItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$200(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V

    return-void
.end method
