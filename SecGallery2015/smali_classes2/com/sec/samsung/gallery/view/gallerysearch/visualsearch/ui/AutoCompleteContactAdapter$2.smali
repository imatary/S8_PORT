.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;
.super Ljava/lang/Object;
.source "AutoCompleteContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

.field final synthetic val$contactName:Ljava/lang/String;

.field final synthetic val$needToUpdatePhoto:Z

.field final synthetic val$rawId:J


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;Ljava/lang/String;JZ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->val$contactName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->val$rawId:J

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->val$needToUpdatePhoto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->val$contactName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->val$rawId:J

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$2;->val$needToUpdatePhoto:Z

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;->onListClicked(Ljava/lang/String;JZ)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
