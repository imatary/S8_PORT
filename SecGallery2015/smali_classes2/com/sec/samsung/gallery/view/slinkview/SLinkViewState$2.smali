.class Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;
.super Ljava/lang/Object;
.source "SLinkViewState.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
.method constructor <init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$100(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$000(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->setItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$300(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$300(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$2;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$200(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
