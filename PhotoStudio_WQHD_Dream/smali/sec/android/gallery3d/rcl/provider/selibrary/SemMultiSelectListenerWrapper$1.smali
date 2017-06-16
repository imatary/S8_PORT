.class Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper$1;
.super Ljava/lang/Object;
.source "SemMultiSelectListenerWrapper.java"

# interfaces
.implements Landroid/widget/AdapterView$SemOnMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;


# direct methods
.method constructor <init>(Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper$1;->this$0:Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper$1;->this$0:Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;

    # getter for: Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->access$100(Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->semSetDragBlockEnabled(Z)V

    iget-object v0, p0, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper$1;->this$0:Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;

    # getter for: Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;
    invoke-static {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->access$000(Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;)Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;->OnMultiSelectStart(II)V

    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 2

    iget-object v0, p0, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper$1;->this$0:Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;

    # getter for: Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->access$100(Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->semSetDragBlockEnabled(Z)V

    iget-object v0, p0, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper$1;->this$0:Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;

    # getter for: Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;
    invoke-static {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->access$000(Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;)Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;->OnMultiSelectStop(II)V

    return-void
.end method

.method public onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper$1;->this$0:Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;

    # getter for: Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;
    invoke-static {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;->access$000(Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;)Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;->onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V

    return-void
.end method
