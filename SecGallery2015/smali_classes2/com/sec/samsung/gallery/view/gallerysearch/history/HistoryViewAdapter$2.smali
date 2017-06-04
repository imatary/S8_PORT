.class Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$2;
.super Ljava/lang/Object;
.source "HistoryViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->addView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->hideSoftInput(Landroid/view/MotionEvent;)V
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method
