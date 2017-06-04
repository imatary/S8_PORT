.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;
.super Ljava/lang/Object;
.source "HorizontalListViewSelectionBufferInterface.java"


# virtual methods
.method public abstract addView(Landroid/widget/RelativeLayout;)V
.end method

.method public abstract removeAllViewsInLayout()V
.end method

.method public abstract setAdapter(Landroid/widget/ListAdapter;)V
.end method

.method public abstract setDelete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInsert(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnAddDeleteListener(Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;)V
.end method

.method public abstract setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setSelection(I)V
.end method
