.class Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$SlinkItemClickListener;
.super Ljava/lang/Object;
.source "SLinkViewState.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlinkItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$SlinkItemClickListener;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$SlinkItemClickListener;-><init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$SlinkItemClickListener;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    # getter for: Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$100(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/samsung/gallery/view/adapter/SLinkMediaSetAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$SlinkItemClickListener;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    # invokes: Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->selectItem(I)V
    invoke-static {v0, p3}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$800(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;I)V

    :cond_0
    return-void
.end method
