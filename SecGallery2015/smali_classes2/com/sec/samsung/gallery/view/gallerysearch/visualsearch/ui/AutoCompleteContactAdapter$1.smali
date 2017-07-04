.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;
.super Ljava/lang/Object;
.source "AutoCompleteContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->val$contactName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->val$rawId:J

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->val$needToUpdatePhoto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->val$contactName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->val$rawId:J

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$1;->val$needToUpdatePhoto:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/AutoCompleteContactAdapter$AutoCompleteContactObserver;->onListClicked(Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method
