.class Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$2;
.super Ljava/lang/Object;
.source "SelectionItemListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$2;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->access$102(Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->setTouchEffectSwitch(Z)V

    goto :goto_0
.end method
