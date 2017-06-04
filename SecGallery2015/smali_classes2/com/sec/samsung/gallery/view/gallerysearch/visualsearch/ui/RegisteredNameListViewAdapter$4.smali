.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$4;
.super Ljava/lang/Object;
.source "RegisteredNameListViewAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->showConfirmDialog(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$personId:J


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$4;->val$name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$4;->val$personId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->mRegisteredNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->mRegisteredNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$4;->val$name:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$4;->val$personId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$RegisteredNameListObserver;->onListClicked(Ljava/lang/String;J)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
