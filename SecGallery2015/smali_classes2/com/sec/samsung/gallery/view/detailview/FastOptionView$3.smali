.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$3;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->initFastMenuView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1200(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method
