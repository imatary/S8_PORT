.class Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer$1;
.super Ljava/lang/Object;
.source "SeHorizontalListViewSelectionBuffer.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->setOnAddDeleteListener(Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;

.field final synthetic val$listener:Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;

    iput-object p2, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer$1;->val$listener:Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer$1;->val$listener:Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;->onAdd()V

    return-void
.end method

.method public onAnimationEnd(Z)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Z)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer$1;->val$listener:Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;->onDelete()V

    return-void
.end method
