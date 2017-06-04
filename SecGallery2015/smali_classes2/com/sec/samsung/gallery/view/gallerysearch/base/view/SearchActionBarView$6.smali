.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$6;
.super Ljava/lang/Object;
.source "SearchActionBarView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->initSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
