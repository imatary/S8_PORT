.class Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;
.super Ljava/lang/Object;
.source "SdlMultiSelectListenerWrapper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->access$000(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnableDragBlock(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->access$100(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;->OnMultiSelectStart(II)V

    return-void
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->access$000(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnableDragBlock(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->access$100(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;->OnMultiSelectStop(II)V

    return-void
.end method

.method public onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->mMultiSelectedListenerCallback:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;->access$100(Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;)Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

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
