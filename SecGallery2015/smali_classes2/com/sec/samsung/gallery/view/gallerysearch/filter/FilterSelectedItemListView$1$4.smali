.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$4;
.super Ljava/lang/Object;
.source "FilterSelectedItemListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$4;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
